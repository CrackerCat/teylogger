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
$application = 'https://github.com/uynilo9/teylogger/releases/latest/download/teylogger.exe'
$command = 'https://github.com/uynilo9/teylogger/releases/latest/download/teyl.exe'

if(Test-Path -Path $folder) {
    Write-Host @'
 _____            _
|_   _|___  _  _ | | ___  __ _  __ _  ___  _ _
  | | / -_)| || || |/ _ \/ _` |/ _` |/ -_)| '_|
  |_| \___| \_, ||_|\___/\__, |\__, |\___||_|
            |__/         |___/ |___/   @uynilo9

ERROR "C:\Teylogger" directory already exists

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
SUCCESS Installed application successfully

'@
} catch {
  Write-Host @'
ERRROR Installed application unsuccessfully

'@
  Start-Sleep -Seconds 5
  exit
}