<powershell>
Set-Location "C:\Windows\system32"
net user Administrator 123@dfVbnm!
#Change TimeZone
C:\Windows\System32\tzutil /s "AUS Eastern Standard Time"
#Install Chrome 
$Path = $env:TEMP;
$Installer = "chrome_installer.exe";
Invoke-WebRequest "http://dl.google.com/chrome/install/375.126/chrome_installer.exe" -OutFile     $Path\$Installer; 
Start-Process -FilePath $Path\$Installer -ArgumentList "/silent /install" -Verb RunAs -Wait;
Remove-Item $Path\$Installer
#Set Chrome as default browser
$chromePath = "${Env:ProgramFiles(x86)}\Google\Chrome\Application\" 
$chromeApp = "chrome.exe"
$chromeCommandArgs = "--make-default-browser"
& "$chromePath$chromeApp" $chromeCommandArgs
</powershell>
