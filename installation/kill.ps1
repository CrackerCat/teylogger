if(-not $IsWindows) {
    Write-Host @'
 _____            _
|_   _|___  _  _ | | ___  __ _  __ _  ___  _ _
  | | / -_)| || || |/ _ \/ _` |/ _` |/ -_)| '_|
  |_| \___| \_, ||_|\___/\__, |\__, |\___||_|
            |__/         |___/ |___/   @uynilo9

ERROR Operating system not supported
    
'@
    exit
}

$folder = 'C:\Teylogger'

if(-not (Test-Path -Path $folder)) {
    Write-Host @'
 _____            _
|_   _|___  _  _ | | ___  __ _  __ _  ___  _ _
  | | / -_)| || || |/ _ \/ _` |/ _` |/ -_)| '_|
  |_| \___| \_, ||_|\___/\__, |\__, |\___||_|
            |__/         |___/ |___/   @uynilo9

ERROR "C:\Teylogger" directory not found

'@
    exit
}

Write-Host @'
 _____            _
|_   _|___  _  _ | | ___  __ _  __ _  ___  _ _
  | | / -_)| || || |/ _ \/ _` |/ _` |/ -_)| '_|
  |_| \___| \_, ||_|\___/\__, |\__, |\___||_|
            |__/         |___/ |___/   @uynilo9

WARNING Start working
'@
Start-Sleep -Seconds 2
Write-Host 'WARNING Removing application'
Remove-item $folder\application\$application | Out-Null
Start-Sleep -Seconds 2
Write-Host 'WARNING Removing command line'
Remove-item $folder\bin\$command | Out-Null
Start-Sleep -Seconds 2
Write-Host 'WARNING Removing command line to PATH'
$path = [System.Environment]::GetEnvironmentVariable('PATH', 'Machine') | Out-Null
$path = ($path.Split(';') | Where-Object { $_ -ne 'C:\Teylogger\bin' }) -join ';' | Out-Null
[System.Environment]::SetEnvironmentVariable('PATH', $path, 'Machine') | Out-Null
Start-Sleep -Seconds 4
Write-Host 'WARNING Removing directories'
Remove-item -itemtype Directory $folder | Out-Null
Start-Sleep -Seconds 2
Write-Host @'
SUCCESS Removed application successfully

'@