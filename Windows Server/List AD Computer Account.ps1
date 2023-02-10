# Para listar todas as contas de computadores do domínio, execute o comando abaixo:
Get-ADComputer -filter * -Property *

# O comando acima lista todos os computadores adicionados ao Active Directory para tonar a saída do comando mais refinada adicione o cmdlt Select-Object e selecione os atributos necessários, abaixo segue o exemplo:
Get-ADComputer -filter * -Property * | Select-Object Name, OperatingSystem 

# Para filtrar os computadores de uma determinada OU utilize o parâmentro -SearchBase como no comando abaixo:
Get-ADcomputer -Filter * -SearchBase "OU=lab,DC=local,DC=br" -Properties * | Select-Object Name,OperatingSystem
 
#Para exportar a saída do comando adicione a linha do comando o cmdlt Export-Csv seguido do caminho para salvar o arquivo, abaixo segue o exemplo:          
Get-ADdcomputer -Filter * -SearchBase "OU=lab,DC=local,DC=br" -Properties * | Select-Object Name,OperatingSystem | Export-Csv c:\computadores.csv -NoTypeInformation -Encoding UTF8 
