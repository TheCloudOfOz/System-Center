$Root = New-SelfSignedCertificate -Subject "C=US,OU=MTM Corp,CN=MTS Root Certificate Authority" -FriendlyName "MTS Root Certificate Authority" -NotAfter (Get-Date).AddYears(50)
$SSCM = New-SelfSignedCertificate -Signer $Root -DnsName "RDU-CM-01.MTS.com","RDU-SVR-01.mts.com" -FriendlyName "System Center" -NotAfter (Get-Date).AddYears(5)