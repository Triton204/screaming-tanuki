# Function to Discover WMI Primary Keys
Clear-Host
Function  Get-WmiKey {
$Class = [WmiClass]$args[0]
$Class.Properties | `
Select-Object @{Name="PName";Expression={$_.name}} -Expand Qualifiers | `
Where-Object {$_.Name -eq "key"} | `
ForEach-Object {$_.Pname}
}

Get-WmiKey Win32_Process