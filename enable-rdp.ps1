
net.exe user "omerta" "silence"
write-host Username: omerta
write-host Password: silence

Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" -Value 0
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"

.\ngrok.exe config add-authtoken 2KPMbPA65fazDtxaednaUWHxPqJ_2pyvc4PxG2fPkeAmLom6Y
.\ngrok.exe tcp 3389
