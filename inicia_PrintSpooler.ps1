echo "Iniciando Servicos de Spooler"
Set-Location -Path C:\scripts
Get-Service -Name "Spooler" | Set-Service -StartupType Automatic -Force 
Start-Sleep -Seconds 1
Get-Service -Name "Spooler" | Start-Service
Start-Sleep -Seconds 150
Get-Service -Name "Spooler" | Set-Service -StartupType Automatic -Force 
Start-Sleep -Seconds 1
Get-Service -Name "Spooler" | Start-Service