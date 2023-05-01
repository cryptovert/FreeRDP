
net.exe user "installer" "Password@001"
write-host Username: installer
write-host Password: Password@001

Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" -Value 0
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"

.\ngrok.exe config add-authtoken 7jASazN8XcDwR2Ag5w32N_5Vm31ij3RRqMjbrWdDmHJ
.\ngrok.exe tcp 3389
