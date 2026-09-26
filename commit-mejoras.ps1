# Commit y push de las mejoras de OnyxHorario
# Uso: clic derecho > Ejecutar con PowerShell, o:
#   cd C:\Users\Codeonyx\Desktop\codeonyx-proyectos\OnyxHorario
#   .\commit-mejoras.ps1

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

Set-Location $PSScriptRoot

Write-Host "==> Estado del repo" -ForegroundColor Cyan
git status

Write-Host "`n==> Añadiendo cambios" -ForegroundColor Cyan
git add README.md index.html .gitignore

Write-Host "`n==> Commit" -ForegroundColor Cyan
git commit -m @"
Mejorar presentación del proyecto para portfolio.

README con demo en Pages, meta en index y .gitignore.
"@

if ($LASTEXITCODE -ne 0) {
    Write-Host "No hay cambios para commit o falló el commit." -ForegroundColor Yellow
    exit $LASTEXITCODE
}

Write-Host "`n==> Push a origin" -ForegroundColor Cyan
git push origin HEAD

Write-Host "`nListo. Demo: https://codeonyx-dev.github.io/OnyxHorario/" -ForegroundColor Green
git status
