#!/bin/bash
# Validate skills against Agent Skills Specification
# Reference: https://agentskills.io/specification.md

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

ISSUES=0
WARNINGS=0
PASSED=0

echo "Validating Skills Against Agent Skills Specification"
echo "====================================================="
echo ""

# Auto-discover skill folders across dual-edition + modules structure (v2.0 layout)
SKILL_DIRS=()
[ -d "skills/vi" ] && SKILL_DIRS+=("skills/vi")
[ -d "skills/en" ] && SKILL_DIRS+=("skills/en")
[ -d "modules/personal-branding/vi" ] && SKILL_DIRS+=("modules/personal-branding/vi")
[ -d "modules/personal-branding/en" ] && SKILL_DIRS+=("modules/personal-branding/en")
[ -d "modules/dropshipping/en" ] && SKILL_DIRS+=("modules/dropshipping/en")

for SKILLS_DIR in "${SKILL_DIRS[@]}"; do
echo "--- Cluster: $SKILLS_DIR ---"
for skill_dir in "$SKILLS_DIR"/*/; do
    skill_name=$(basename "$skill_dir")

    # Skip non-skill directories
    [[ "$skill_name" == "references" ]] && continue
    [[ "$skill_name" == "workflows" ]] && continue

    skill_file="$skill_dir/SKILL.md"
    errors=()
    warnings=()

    # Check SKILL.md exists
    if [[ ! -f "$skill_file" ]]; then
        echo -e "${RED}FAIL $skill_name${NC} — Missing SKILL.md"
        ((ISSUES++))
        continue
    fi

    # Extract frontmatter
    frontmatter=$(sed -n '/^---$/,/^---$/p' "$skill_file" | head -n -1 | tail -n +2)

    if [[ -z "$frontmatter" ]]; then
        echo -e "${RED}FAIL $skill_name${NC} — Missing YAML frontmatter"
        ((ISSUES++))
        continue
    fi

    # Validate name
    name_in_file=$(echo "$frontmatter" | grep "^name:" | sed 's/^name: //' | tr -d ' ')

    if [[ -z "$name_in_file" ]]; then
        errors+=("Missing 'name' field")
    elif [[ "$name_in_file" != "$skill_name" ]]; then
        errors+=("Name mismatch: dir='$skill_name' frontmatter='$name_in_file'")
    elif ! [[ "$name_in_file" =~ ^[a-z0-9]([a-z0-9-]{0,62}[a-z0-9])?$ ]]; then
        errors+=("Invalid name format: must be lowercase a-z, 0-9, and hyphens only")
    fi

    # Validate description
    # Handles three YAML forms: quoted scalar, plain scalar, and block scalar (| or >).
    # Block scalars were previously parsed as the literal "|", silently disabling every
    # check below for those skills.
    desc_line=$(echo "$frontmatter" | grep "^description:" | head -1)
    if [[ "$desc_line" =~ ^description:[[:space:]]*[\|\>] ]]; then
        # Block scalar: collect the indented continuation lines that follow.
        description=$(echo "$frontmatter" | awk '
            /^description:[[:space:]]*[|>]/ { collecting=1; next }
            collecting && /^[[:space:]]+/ { sub(/^[[:space:]]+/, ""); printf "%s ", $0; next }
            collecting { exit }
        ')
    elif [[ $desc_line == *'description: "'* ]]; then
        description=$(echo "$desc_line" | sed 's/^description: "//' | sed 's/"$//')
    else
        description=$(echo "$desc_line" | sed 's/^description: //')
    fi

    if [[ -z "$description" ]]; then
        errors+=("Missing 'description' field")
    else
        desc_len=${#description}
        if [[ $desc_len -lt 1 || $desc_len -gt 1024 ]]; then
            errors+=("Description length $desc_len chars (must be 1-1024)")
        fi
        # The model routes on name + description only. Custom keys (triggers/output/
        # related) are documentation for humans and are never seen at selection time,
        # so the trigger phrases must live inside the description itself.
        # Previously this was a substring match on "dung|use|when" which any Vietnamese
        # description passed by accident. Now: count actual quoted trigger phrases.
        quoted_count=$(echo "$description" | grep -o "'[^']\+'" | wc -l | tr -d ' ')
        if [[ $quoted_count -lt 3 ]]; then
            warnings+=("Description has $quoted_count quoted trigger phrases (need >=3 — the model routes on description, not on the triggers: key)")
        fi
        # Sibling routing keeps overlapping skills from firing on each other's work.
        # Accepts both the Vietnamese form ("Khong dung cho — X thi dung skill NN-...")
        # and the English forms ("Not for — X, see `NN-...`" / "... use `NN-...`").
        if ! echo "$description" | grep -qiE "khong dung cho|not for|xem skill|dung .*thay the|(see|use) \`?[0-9]{2}-"; then
            warnings+=("Description lacks sibling routing (add 'Khong dung cho X - dung skill NN-ten' or 'Not for — X, see NN-name')")
        fi
    fi

    # Validate file length
    line_count=$(wc -l < "$skill_file")
    if [[ $line_count -gt 500 ]]; then
        warnings+=("SKILL.md is $line_count lines (recommended <500, move details to references/)")
    fi

    # Report
    if [[ ${#errors[@]} -gt 0 ]]; then
        echo -e "${RED}FAIL $skill_name${NC}"
        for e in "${errors[@]}"; do echo -e "   Error: $e"; done
        for w in "${warnings[@]}"; do echo -e "   ${YELLOW}Warn: $w${NC}"; done
        ((ISSUES++))
    elif [[ ${#warnings[@]} -gt 0 ]]; then
        echo -e "${YELLOW}WARN $skill_name${NC}"
        for w in "${warnings[@]}"; do echo -e "   ${YELLOW}$w${NC}"; done
        ((WARNINGS++))
    else
        echo -e "${GREEN}PASS $skill_name${NC}"
        ((PASSED++))
    fi
done
done

# Variant pattern validation (skills 20 in skills/vi/, skill 22 in modules/personal-branding/vi/)
echo ""
echo "Checking variant patterns..."
# Skill 20 client-intake (skills/vi/)
if [ -d "skills/vi/20-brief-client-intake/variants" ]; then
  variant_count=$(ls skills/vi/20-brief-client-intake/variants/*.md 2>/dev/null | wc -l)
  if [ "$variant_count" -ge 3 ]; then
    echo -e "${GREEN}PASS${NC} 20-brief-client-intake: $variant_count variants found"
  else
    echo -e "${YELLOW}WARN${NC} 20-brief-client-intake: only $variant_count variants (expected >=3)"
  fi
fi
# Skill 22 personal-brand-context (modules/personal-branding/vi/)
if [ -d "modules/personal-branding/vi/22-personal-brand-context/variants" ]; then
  variant_count=$(ls modules/personal-branding/vi/22-personal-brand-context/variants/*.md 2>/dev/null | wc -l)
  if [ "$variant_count" -ge 3 ]; then
    echo -e "${GREEN}PASS${NC} 22-personal-brand-context: $variant_count variants found"
  else
    echo -e "${YELLOW}WARN${NC} 22-personal-brand-context: only $variant_count variants (expected >=3)"
  fi
fi

# Skill 22 specific: check 01-founder, 02-coach, 03-creator
if [ -d "modules/personal-branding/vi/22-personal-brand-context/variants" ]; then
  for variant in "01-founder.md" "02-coach.md" "03-creator.md"; do
    if [ -f "modules/personal-branding/vi/22-personal-brand-context/variants/$variant" ]; then
      echo -e "${GREEN}PASS${NC} skill-22 variant: $variant"
    else
      echo -e "${RED}FAIL${NC} skill-22 variant missing: $variant"
    fi
  done
fi

# Variant pattern validation for global cluster
echo ""
echo "Checking global variant patterns..."

# Foundation
if [ -d "skills/en/product-marketing-context-global/variants" ]; then
  count=$(ls skills/en/product-marketing-context-global/variants/*.md 2>/dev/null | wc -l)
  if [ "$count" -ge 4 ]; then
    echo -e "${GREEN}PASS${NC} foundation-global: $count variants"
  else
    echo -e "${YELLOW}WARN${NC} foundation-global: only $count variants"
  fi
fi

# Skill 22 PB foundation
if [ -d "modules/personal-branding/en/22-personal-brand-context-global/variants" ]; then
  count=$(ls modules/personal-branding/en/22-personal-brand-context-global/variants/*.md 2>/dev/null | wc -l)
  if [ "$count" -ge 4 ]; then
    echo -e "${GREEN}PASS${NC} skill-22-global: $count variants"
  else
    echo -e "${YELLOW}WARN${NC} skill-22-global: only $count variants"
  fi
fi

# Skills with variants: marketing (skills/en/) + PB (modules/personal-branding/en/)
# Marketing variants
for skill in "03-performance-eval-global" "10-reverse-kpi-global" "11-channel-setup-global" "14-email-marketing-global" "17-pricing-strategy-global" "18-referral-program-global" "21-ads-audit-global"; do
  if [ -d "skills/en/$skill/variants" ]; then
    count=$(ls skills/en/$skill/variants/*.md 2>/dev/null | wc -l)
    if [ "$count" -ge 4 ]; then
      echo -e "${GREEN}PASS${NC} $skill: $count variants"
    fi
  fi
done

# Personal Branding variants (skills 24, 27 in modules/personal-branding/en/)
for skill in "24-ai-avatar-production-global" "27-personal-brand-monetize-global"; do
  if [ -d "modules/personal-branding/en/$skill/variants" ]; then
    count=$(ls modules/personal-branding/en/$skill/variants/*.md 2>/dev/null | wc -l)
    if [ "$count" -ge 4 ]; then
      echo -e "${GREEN}PASS${NC} $skill: $count variants"
    fi
  fi
done

# Required region variants check (US/EU/SEA/LATAM) — marketing
for skill in "product-marketing-context-global" "03-performance-eval-global" "10-reverse-kpi-global" "11-channel-setup-global" "14-email-marketing-global" "17-pricing-strategy-global" "18-referral-program-global" "21-ads-audit-global"; do
  if [ -d "skills/en/$skill/variants" ]; then
    for variant in "01-us.md" "02-eu.md" "03-sea.md" "04-latam.md"; do
      if [ ! -f "skills/en/$skill/variants/$variant" ]; then
        echo -e "${RED}FAIL${NC} $skill missing variant: $variant"
      fi
    done
  fi
done

# Required region variants check — PB (in modules/personal-branding/en/)
for skill in "22-personal-brand-context-global" "24-ai-avatar-production-global" "27-personal-brand-monetize-global"; do
  if [ -d "modules/personal-branding/en/$skill/variants" ]; then
    for variant in "01-us.md" "02-eu.md" "03-sea.md" "04-latam.md"; do
      if [ ! -f "modules/personal-branding/en/$skill/variants/$variant" ]; then
        echo -e "${RED}FAIL${NC} $skill missing variant: $variant"
      fi
    done
  fi
done

echo ""
echo "====================================================="
echo "Passed: $PASSED | Warnings: $WARNINGS | Issues: $ISSUES"
[[ $ISSUES -eq 0 ]] && exit 0 || exit 1
