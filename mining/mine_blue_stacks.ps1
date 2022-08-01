param (
    [int] $reset_count,
    [int] $mining_time,
    [bool] $recall=$false
)

# BlueStacks must be running - this will activate it
$wshell = New-Object -ComObject wscript.shell;
$wshell.AppActivate('BlueStacks App Player');

for ($i = 1; $i -le $reset_count; $i++) {
    Write-Host "Reset #$i"
    $wshell.SendKeys('L')
    Get-Random -Minimum 2 -Maximum 4 | Start-Sleep
    $wshell.SendKeys('G')
     Get-Random -Minimum 5 -Maximum 7 | Start-Sleep
    $wshell.SendKeys('G')
     Get-Random -Minimum 2 -Maximum 4 | Start-Sleep
    $wshell.SendKeys('M')
    Start-Sleep -Seconds $mining_time
}

if ($recall) {
    $wshell.SendKeys('L')
    Get-Random -Minimum 2 -Maximum 4 | Start-Sleep
    $wshell.SendKeys('G')
    Get-Random -Minimum 5 -Maximum 7 | Start-Sleep
    $wshell.SendKeys('G')
    Get-Random -Minimum 2 -Maximum 4 | Start-Sleep
    $wshell.SendKeys('R')
}
