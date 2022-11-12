# Microsoft PowerShell script to create a simple function
# Author: Guy Thomas
Function Get-BatAvg{
Param ($Name, $Runs, $Outs)
$Avg = [int]($Runs / $Outs*100)/100
Write-Output "$Name's Average = $Avg, $Runs, $Outs"
}
Get-BatAvg Dudeguy 6996 7