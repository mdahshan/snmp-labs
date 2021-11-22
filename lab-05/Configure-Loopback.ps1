#Configuration parameters
$description = 'Microsoft KM-TEST Loopback Adapter'
$ip = "172.16.4.12"
$mask = "255.255.255.0"
$gw = "172.16.4.1"
$newname = "Loop1"

#### Don't change below this line

$adapter=Get-NetAdapter -InterfaceDescription "Microsoft KM-TEST Loopback Adapter"
Rename-NetAdapter -InterfaceDescription "Microsoft KM-TEST Loopback Adapter" -NewName "Loop1"
New-NetIPAddress -InterfaceIndex $adapter.ifIndex -AddressFamily "IPv4" -IPAddress "172.16.4.12" -PrefixLength 24 -DefaultGateway "172.16.4.1"

