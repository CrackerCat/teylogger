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

$progressPreference = 'silentlyContinue'

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
  Write-Host 'WARNING Removing command line to PATH'
  [System.Environment]::SetEnvironmentVariable('Path', ([System.Environment]::GetEnvironmentVariable('Path', 'user').Split(';') | Where-Object { $_ -ne "$folder\bin" }) -join ';', 'user')
  Write-Host 'WARNING Removing directories'
  Remove-item $folder\application -Recurse | Out-Null
  Remove-item $folder\bin -Recurse | Out-Null
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

$application = 'https://github.com/uynilo9/teylogger/releases/latest/download/teylogger.exe'
$command = 'https://github.com/uynilo9/teylogger/releases/latest/download/teyl.exe'

try {
  Start-Sleep -Seconds 2
  Write-Host 'WARNING Creating directories'
  New-item -itemtype Directory $folder\application | Out-Null
  New-item -itemtype Directory $folder\bin | Out-Null
  Start-Sleep -Seconds 4
  Write-Host 'WARNING Installing application'
  Invoke-WebRequest -Uri $application -OutFile $folder\application\teylogger.exe | Out-Null
  Write-Host 'WARNING Installing command line'
  Invoke-WebRequest -Uri $command -OutFile $folder\bin\teyl.exe | Out-Null
  Write-Host 'WARNING Appending command line to PATH'
  [System.Environment]::SetEnvironmentVariable('Path', [System.Environment]::GetEnvironmentVariable('Path', 'user') + ";$folder\bin", 'user')
  Write-Host @'
SUCCESS Updated application successfully

'@
} catch {
  Write-Host @'
ERRROR Update application unsuccessfully

'@
  Start-Sleep -Seconds 5
  exit
}