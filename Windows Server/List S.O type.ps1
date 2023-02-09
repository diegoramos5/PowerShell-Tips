#Verificar o sistema operacional

get-wmiobject -class win32_operatingsystem | format-list name

#Verificar se um computador qual arquitetura (32 ou 64 bits) de Sistema Operacional o computador está utilizando:

get-wmiobject -class win32_operatingsystem | format-list osarchitecture

#Verificar o tipo de processador e se o mesmo tem suporte a instalação de sistemas operacionais 64 bits.

get-wmiobject -class win32_processor | format-list name, description