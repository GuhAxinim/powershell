function Show-Banner {
    Clear-Host
    Write-Host ""
    Write-Host "   █████╗ ██╗  ██╗██╗   ██╗███████╗ █████╗ ██╗   ██╗██████╗  " -ForegroundColor Cyan
    Write-Host "  ██╔══██╗██║ ██╔╝╚██╗ ██╔╝██╔════╝██╔══██╗██║   ██║██╔══██╗ " -ForegroundColor Cyan
    Write-Host "  ███████║█████╔╝  ╚████╔╝ █████╗  ███████║██║   ██║██████╔╝ " -ForegroundColor Cyan
    Write-Host "  ██╔══██║██╔═██╗   ╚██╔╝  ██╔══╝  ██╔══██║██║   ██║██╔═══╝  " -ForegroundColor Cyan
    Write-Host "  ██║  ██║██║  ██╗   ██║   ███████╗██║  ██║╚██████╔╝██║      " -ForegroundColor Cyan
    Write-Host "  ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝      " -ForegroundColor DarkGray
    Write-Host "            by Guh_axinim (GitHub Edition)" -ForegroundColor Yellow
    Write-Host ""
}

function Show-Menu {
    Write-Host "==================== MENU ====================" -ForegroundColor Green
    Write-Host "[1] 🔗 Ir para nosso GitHub"
    Write-Host "[2] ❌ Sair"
    Write-Host "==============================================" -ForegroundColor Green
}

function Open-GitHub {
    Start-Process "https://github.com/Guh_axinim"
    Write-Host "`nAbrindo GitHub..." -ForegroundColor Yellow
    Pause
}

# Execução principal
do {
    Show-Banner
    Show-Menu
    $option = Read-Host "`nDigite sua opção"
    switch ($option) {
        "1" { Open-GitHub }
        "2" { Write-Host "`nEncerrando..."; break }
        default { Write-Host "Opção inválida."; Pause }
    }
} while ($true)
