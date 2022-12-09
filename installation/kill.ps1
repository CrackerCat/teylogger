if(-not $IsWindows) {
    Write-Host @'
 _____            _
|_   _|___  _  _ | | ___  __ _  __ _  ___  _ _
  | | / -_)| || || |/ _ \/ _` |/ _` |/ -_)| '_|
  |_| \___| \_, ||_|\___/\__, |\__, |\___||_|
            |__/         |___/ |___/   @uynilo9

ERROR Operating system not supported
    
'@
    Start-Sleep -Seconds 5
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
    Start-Sleep -Seconds 5
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
try {
  Start-Sleep -Seconds 2
  Write-Host 'WARNING Removing application'
  Remove-item $folder\application\teylogger.exe | Out-Null
  Start-Sleep -Seconds 2
  Write-Host 'WARNING Removing command line'
  Remove-item $folder\bin\teyl.exe | Out-Null
  Start-Sleep -Seconds 2
  Write-Host 'WARNING Removing command line from PATH'
  [System.Environment]::SetEnvironmentVariable('Path', ([System.Environment]::GetEnvironmentVariable('Path', 'user').Split(';') | Where-Object { $_ -ne "$folder\bin" }) -join ';', 'user')
  Write-Host 'WARNING Removing directories'
  Remove-item $folder -Recurse | Out-Null
  Start-Sleep -Seconds 2
  Write-Host @'
SUCCESS Removed application successfully

'@
} catch {
  Write-Host @'
ERRROR Removed application unsuccessfully

'@
  Start-Sleep -Seconds 5
  exit
}