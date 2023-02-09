#converter e-mail normal em e-mail compartilhado
Set-Mailbox "<Maibox Name>" -Type shared

#Permitir acesso ao e-mail compartilhado
Add-MailboxPermission <Mailbox Name> -User "<domain\username>" -AccessRights FullAccess

#Permitir enviar e-mail como o e-mail compartilhado
Add-ADPermission <Mailbox Name> -User "<domain\username>" -ExtendedRights Send-As
