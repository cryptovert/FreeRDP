
net.exe user $env:UserName "Password@001"
write-host Username: $env:UserName
write-host Password: Password@001

Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" -Value 0
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"

.\ngrok.exe config add-authtoken 2OhI9NwNaO3Ky1yJKPbYR5Nq710_69Cs72CWeYoHmWKAzhQ9w
.\ngrok.exe tcp 3389
