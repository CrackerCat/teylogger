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
Write-Host 'WARNING Creating directories'
New-item -itemtype Directory $folder | Out-Null
New-item -itemtype Directory $folder\application | Out-Null
New-item -itemtype Directory $folder\bin | Out-Null
Start-Sleep -Seconds 4
Write-Host 'WARNING Installing application'
Invoke-WebRequest -OutFile $folder\application $application | Out-Null
Start-Sleep -Seconds 2
Write-Host 'WARNING Installing command line'
Invoke-WebRequest -OutFile $folder\bin $command | Out-Null
Start-Sleep -Seconds 2
Write-Host 'WARNING Appending command line to PATH'
$Env:PATH += ";$folder\bin"
Start-Sleep -Seconds 2
Write-Host @'
SUCCESS Installed application successfully

'@