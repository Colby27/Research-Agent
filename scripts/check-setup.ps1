$ErrorActionPreference = 'Stop'
$projectRoot = Split-Path $PSScriptRoot -Parent
Write-Output "Project: $projectRoot"
foreach ($tool in @('git', 'code', 'codex', 'gh')) {
    $command = Get-Command $tool -ErrorAction SilentlyContinue
    if ($command) { Write-Output "$tool available" }
    else { Write-Output "$tool missing" }
}
foreach ($relative in @('AGENTS.md', 'research_brief.md', 'prompts/investigate.md', 'reports/latest.md')) {
    if (-not (Test-Path (Join-Path $projectRoot $relative))) { throw "Missing $relative" }
}
& git -C $projectRoot rev-parse --show-toplevel
if ($LASTEXITCODE -ne 0) { throw 'Git check failed. Inspect the error above for initialization or ownership issues.' }
& git -C $projectRoot remote -v
& codex login status
if ($LASTEXITCODE -ne 0) { throw 'Codex check failed. Run in your normal VS Code terminal; inspect home-directory or sign-in errors above.' }
Write-Output 'Local check complete. Remote URL does not prove GitHub account authorization.'
