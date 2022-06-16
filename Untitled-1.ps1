$Username = "harrisonwk8@gmail.com";
$Password = "fdkazwxkscdisfnc";
$SendTo = "component+c2e82ef8-0470-4034-8f97-0a14fd180e98@notifications.statuspage.io";
$MailServer = "smtp.gmail.com";
$HostName = $args[0];
$IPAddress = $args[1];
$PingStatus = $args[2];
$FailedOn = $args[3];

$message = new-object Net.Mail.MailMessage;
$message.From = $Username;
$message.To.Add($SendTo);
$message.Subject = "DOWN" ;
$message.Body = "Information about the failed ping: `r`nHost Name: $HostName`r`nIP Address: $IPAddress`r`nPing Status: $PingStatus`r`nPing Time: $FailedOn";

$smtp = new-object Net.Mail.SmtpClient($MailServer, "587");
$smtp.EnableSSL = $true;
$smtp.Credentials = New-Object System.Net.NetworkCredential($Username, $Password);
$smtp.send($message);