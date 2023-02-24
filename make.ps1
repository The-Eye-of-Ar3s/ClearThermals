if (Test-Path -Path C:\Games\DEV\user\mods\ClearThermals\) {
    Remove-Item -Recurse -Force C:\Games\DEV\user\mods\ClearThermals\ | out-null
}
mkdir C:\Games\DEV\user\mods\ClearThermals\ | out-null
Copy-Item -Recurse -Path .\* -Destination C:\Games\DEV\user\mods\ClearThermals\ | out-null
Remove-Item C:\Games\DEV\user\mods\ClearThermals\make.ps1 | out-null
Set-Location C:\Games\DEV\ | out-null
Start-Process powershell {./Aki.Server.exe}
Start-Process powershell {./Aki.Launcher.exe}
Set-Location C:\Users\TheEyeOfAr3s\Documents\coding\SPTarkov\ClearThermals\ | out-null