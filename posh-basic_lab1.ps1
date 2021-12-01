
# Lab1
$adm= Get-LocalUser administrator
$adm.LastLogon
$comp = (get-date) - ( $adm.LastLogon)
$comp.days
#oder
(Get-Date).Subtract($adm.LastLogon) | select days

# UTC
(get-date).ToUniversalTime()
(get-date).AddHours(-1)
([System.DateTime]::UtcNow)

#file copy
$filecopy = Get-ChildItem C:\temp\mig.csv
$filecopy.CopyTo("c:\sys\migcopy.csv")
#oder
Copy-Item $filecopy -Destination C:\sys\testcopy.csv
#oder
Start-BitsTransfer $filecopy -Destination C:\sys\testcopy.csv
