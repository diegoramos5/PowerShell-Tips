#Para listar contas de usuários que pertencem a um determinado grupo do AD, execute o seguinte comando:

Get-ADGroupMember -identity "Admins. do domínio" | Select-Object name, samAccountname

#Caso, exista grupos de seguraça adicionado ao grupo e você deseja listar apenas as contas de usuários, adicione o comando (Where-Object objectclass -eq "user")

Get-ADGroupMember -identity "Admins. do domínio" | Where-Object objectclass -eq "user"

#Para exportar o resultado do comando Get-ADGroupMember adicione o comando Export-Csv

Get-ADGroupMember -identity "Admins. do domínio" | Where-Object objectclass -eq "user" | Select-Object name, samAccountname | Export-Csv c:\Users_domain_admin.csv -NoTypeInformation -Encoding UTF8
