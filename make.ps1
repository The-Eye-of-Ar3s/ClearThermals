if (Test-Path -Path C:\Games\SPT-DEV\user\mods\ClearThermals\) {
    Remove-Item -Recurse -Force C:\Games\SPT-DEV\user\mods\ClearThermals\ | out-null
}
mkdir C:\Games\SPT-DEV\user\mods\ClearThermals\ | out-null
Copy-Item -Recurse -Path .\* -Destination C:\Games\SPT-DEV\user\mods\ClearThermals\ | out-null
Remove-Item C:\Games\SPT-DEV\user\mods\ClearThermals\make.ps1 | out-null
Set-Location C:\Games\SPT-DEV\ | out-null
Start-Process powershell {./Aki.Server.exe}
Start-Process powershell {./Aki.Launcher.exe}
Set-Location C:\Users\TheEyeOfAr3s\Documents\coding\SPTarkov\ClearThermals\ | out-null