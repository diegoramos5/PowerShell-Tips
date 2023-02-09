#Query firewall rules:
netsh advfirewall firewall show rule name=all

#Enable and disable Windows Firewall: 
netsh advfirewall set allprofiles state on
netsh advfirewall set allprofiles state off

#Reset Windows Firewall:
netsh advfirewall reset

#Set logging:
netsh advfirewall set currentprofile logging filename "C:\temp\pfirewall.log"

#Allow and prevent ping:
netsh advfirewall firewall add rule name="All ICMP V4" dir=in action=block protocol=icmpv4
netsh advfirewall firewall add rule name="All ICMP V4" dir=in action=allow protocol=icmpv4

#Enable and delete a port:
netsh advfirewall firewall add rule name="Open SQL Server Port 1433" dir=in action=allow protocol=TCP localport=1433
netsh advfirewall firewall delete rule name="Open SQL Server Port 1433" protocol=tcp localport=1433

#Enable a program:
netsh advfirewall firewall add rule name="Allow Messenger" dir=in action=allow program="C:\programfiles\messenger\msnmsgr.exe"

#Enable remote management:
netsh advfirewall firewall set rule group="remote administration" new enable=yes

#Enable Remote Desktop Connection:
netsh advfirewall firewall set rule group="remote desktop" new enable=Yes

#Export and import firewall settings:
netsh advfirewall export "C:\temp\WFconfiguration.wfw" 
netsh advfirewall import "C:\temp\WFconfiguration.wfw"