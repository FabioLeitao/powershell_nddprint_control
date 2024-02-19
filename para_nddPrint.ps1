echo "Interrompendo Servicos de impressora e autenticacao ndd"
Set-Location -Path C:\scripts
Start-Sleep -Seconds 1
Get-Service -Name "Spooler" | Stop-Service -Force
Start-Sleep -Seconds 3
Get-Service -Name "DCSServer" | Stop-Service -Force
Start-Sleep -Seconds 1
Get-Service -Name "nddPrint.Host" | Stop-Service -Force
Start-Sleep -Seconds 1
Get-Service -Name "nddPrint.Host.ApiService" | Stop-Service -Force
Start-Sleep -Seconds 1
Get-Service -Name "nddPrint.Host.AuthenticatorHelper" | Stop-Service -Force
Start-Sleep -Seconds 1
Get-Service -Name "nddPrint.Host.Cache.Policies" | Stop-Service -Force
Start-Sleep -Seconds 1
Get-Service -Name "nddPrint.Host.Cache.Sync" | Stop-Service -Force
Start-Sleep -Seconds 1
Get-Service -Name "nddPrint.Host.Cache.Polices.NancyService" | Stop-Service -Force
Start-Sleep -Seconds 1
Get-Service -Name "nddPrint.Host.PrintersMonitor" | Stop-Service -Force
Start-Sleep -Seconds 1
Get-Service -Name "nddPrint.LiveUpdate.Host" | Stop-Service -Force
Start-Sleep -Seconds 6
Get-Service -Name "NDDigital.nddPrint.HP.MF.Service" | Stop-Service -Force
Start-Sleep -Seconds 1
Get-Service -Name "nddPrint.Releaser" | Stop-Service -Force
Start-Sleep -Seconds 1
Get-Service -Name "nddPrint.Releaser.NancyService" | Stop-Service -Force
Start-Sleep -Seconds 1
Get-Service -Name "nddPrint.Releaser.NetReader" | Stop-Service -Force
Start-Sleep -Seconds 1
Get-Service -Name "nddPrint.Agent.Guardian" | Stop-Service -Force
Start-Sleep -Seconds 1
Get-Service -Name "nddPrint.Agent.HttpServer" | Stop-Service -Force
Start-Sleep -Seconds 1
Get-Service -Name "nddPrint.Agent.Listener" | Stop-Service -Force
Start-Sleep -Seconds 1
Get-Service -Name "nddPrint.Agent.LiveUpdate" | Stop-Service -Force
Start-Sleep -Seconds 1
Get-Service -Name "nddPrint.Agent.Sender" | Stop-Service -Force
Start-Sleep -Seconds 1
Get-Service -Name "nddPrint.Agent.Watcher" | Stop-Service -Force
Start-Sleep -Seconds 11
echo "Servicos de impressotra e autenticacao interrompidos com sucesso"