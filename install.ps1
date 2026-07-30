# Fullstack Marketing Skills — Installer for Windows
# Usage: .\install.ps1 [-Global] [-Project]

param(
    [switch]$Global,
    [switch]$Project
)

$SkillDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$ClaudeHome = Join-Path $env:USERPROFILE ".claude"

if ($Global) {
    $Target = Join-Path $ClaudeHome "skills\marketing"
} elseif ($Project) {
    $Target = Join-Path (Get-Location) ".claude\skills\marketing"
} else {
    Write-Host "Fullstack Marketing Skills — Installer" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "  1) Global  (all projects)"
    Write-Host "  2) Project (current project only)"
    $choice = Read-Host "Enter choice [1/2]"
    switch ($choice) {
        "1" { $Target = Join-Path $ClaudeHome "skills\marketing" }
        "2" { $Target = Join-Path (Get-Location) ".claude\skills\marketing" }
        default { Write-Host "Invalid choice." -ForegroundColor Red; exit 1 }
    }
}

Write-Host "Installing to: $Target" -ForegroundColor Green
Write-Host ""

# Create directories
$dirs = @("", "references", "workflows", "agents", "knowledge")
foreach ($d in $dirs) {
    $path = Join-Path $Target $d
    if (-not (Test-Path $path)) {
        New-Item -ItemType Directory -Path $path -Force | Out-Null
    }
}

# Copy files
$sources = @(
    @{ From = "skills\*"; To = "" },
    @{ From = "references\*"; To = "references" },
    @{ From = "workflows\*"; To = "workflows" },
    @{ From = "agents\*"; To = "agents" },
    @{ From = "knowledge\*"; To = "knowledge" },
    @{ From = "CLAUDE.md"; To = "" }
)

foreach ($s in $sources) {
    $src = Join-Path $SkillDir $s.From
    $dst = Join-Path $Target $s.To
    if (Test-Path $src) {
        Copy-Item -Path $src -Destination $dst -Force -Recurse
    }
}

$fileCount = (Get-ChildItem -Path $Target -Filter "*.md" -Recurse).Count
Write-Host ""
Write-Host "Done! Installed $fileCount files." -ForegroundColor Green
Write-Host ""
Write-Host 'Usage in Claude Code:'
Write-Host '  > Lap ke hoach marketing cho [san pham]'
Write-Host '  > Viet script TikTok cho [san pham]'
Write-Host '  > Danh gia hieu suat chien dich [ten]'
