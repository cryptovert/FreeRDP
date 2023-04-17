
net.exe user $env:UserName "Password@001"
write-host Username: $env:UserName
write-host Password: Password@001

Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" -Value 0
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"

.\ngrok.exe config add-authtoken 2OZdUk0gYOnt0rVa2o6CVSnuGTW_7gHwXfdJdfb5635tnBrXQ
.\ngrok.exe tcp 3389
