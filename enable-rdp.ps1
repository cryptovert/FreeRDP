
net.exe user "installer" "Password@001"
write-host Username: installer
write-host Password: Password@001

Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" -Value 0
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"

.\ngrok.exe config add-authtoken 2KPMbPA65fazDtxaednaUWHxPqJ_2pyvc4PxG2fPkeAmLom6Y
.\ngrok.exe tcp 3389
