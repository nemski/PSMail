param([string]$MailServer, [int]$MailPort, [string]$EmailFrom, [string]$EmailTo, [string]$Subject, [string]$Body)

<#
.SYNOPSIS
	Send a mail from the command line
.DESCRIPTION
	
.NOTES
  Source	: DD Australia GSOA Systems Team
  Authors	: Patrick Robinson
  Peer Review	:
.PARAMETER MailServer
	SMTP server to send mail to.

.PARAMETER MailPort
	SMTP port

.PARAMETER EmailFrom
	The source email address

.PARAMETER EmailTo
	Destination Address

.PARAMETER Subject
	Email subject

.PARAMETER Body
	Text to email 
	
.EXAMPLE
	&"mail.ps1 mailhost.syd.insite.ddau no-reply@prognosis.gsoa.didata.com.au patrick.robinson@dimensiondata.com 'test' '123'".
#>

$SMTPClient = New-Object Net.Mail.SmtpClient($MailServer, $MailPort)
$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)