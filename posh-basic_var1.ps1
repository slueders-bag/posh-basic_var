
# Last Logon
$adm= Get-LocalUser administrator
$adm.LastLogon
$comp = (get-date) - ( $adm.LastLogon)
$comp.days

#oder
(Get-Date).Subtract($adm.LastLogon) | select days

# UTC conversion
(get-date).ToUniversalTime()
([System.DateTime]::UtcNow)

#file copy
$filecopy = Get-ChildItem C:\temp\mig.csv
$filecopy.CopyTo("c:\sys\migcopy.csv")

#oder
Copy-Item $filecopy -Destination C:\sys\testcopy.csv

#oder
Start-BitsTransfer $filecopy -Destination C:\sys\testcopy.csv
