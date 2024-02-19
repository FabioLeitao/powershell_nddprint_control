echo "Iniciando Servicos de impressora e autenticacao ndd"
Set-Location -Path C:\scripts
Start-Sleep -Seconds 1
Get-Service -Name "nddPrint.Agent.Watcher" | Start-Service
Start-Sleep -Seconds 7
Get-Service -Name "nddPrint.Agent.Sender" | Start-Service
Start-Sleep -Seconds 2
Get-Service -Name "nddPrint.Agent.LiveUpdate" | Start-Service
Start-Sleep -Seconds 2
Get-Service -Name "nddPrint.Agent.Listener" | Start-Service
Start-Sleep -Seconds 2
Get-Service -Name "nddPrint.Agent.HttpServer" | Start-Service
Start-Sleep -Seconds 2
Get-Service -Name "nddPrint.Agent.Guardian" | Start-Service
Start-Sleep -Seconds 2
Get-Service -Name "nddPrint.Releaser.NetReader" | Start-Service
Start-Sleep -Seconds 2
Get-Service -Name "nddPrint.Releaser.NancyService" | Start-Service
Start-Sleep -Seconds 6
Get-Service -Name "nddPrint.Releaser" | Start-Service
Start-Sleep -Seconds 2
Get-Service -Name "NDDigital.nddPrint.HP.MF.Service" | Start-Service
Start-Sleep -Seconds 2
Get-Service -Name "nddPrint.LiveUpdate.Host" | Start-Service
Start-Sleep -Seconds 10
Get-Service -Name "nddPrint.Host.PrintersMonitor" | Start-Service
Start-Sleep -Seconds 2
Get-Service -Name "nddPrint.Host.Cache.Polices.NancyService" | Start-Service
Start-Sleep -Seconds 2
Get-Service -Name "nddPrint.Host.Cache.Sync" | Start-Service
Start-Sleep -Seconds 2
Get-Service -Name "nddPrint.Host.Cache.Policies" | Start-Service
Start-Sleep -Seconds 2
Get-Service -Name "nddPrint.Host.AuthenticatorHelper" | Start-Service
Start-Sleep -Seconds 2
Get-Service -Name "nddPrint.Host.ApiService" | Start-Service
Start-Sleep -Seconds 9
Get-Service -Name "nddPrint.Host" | Start-Service
Start-Sleep -Seconds 5
Get-Service -Name "DCSServer" | Start-Service
Start-Sleep -Seconds 6
Get-Service -Name "Spooler" | Set-Service -StartupType Automatic -Force 
Start-Sleep -Seconds 1
Get-Service -Name "Spooler" | Start-Service
Start-Sleep -Seconds 1
Get-Process nddPrint.Host.Administration | Stop-Process
Start-Sleep -Seconds 2
start 'C:\Users\Public\Desktop\nddPrint Host.lnk'
echo "Servicos de impressotra e autenticacao iniciados com sucesso"
echo "Rodar o aplicativo <nddPrint Host> no seu Desktop para garantir acesso as impressoras"
echo "Teste a impressao e autenticacao com cracha novamente"
echo "Este aplicativo precisa ser deixado rodando, nao de logoff, apenas feche a sessão do RDP"