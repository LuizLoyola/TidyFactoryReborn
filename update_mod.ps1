$modName = "TidyFactoryReborn"
$zipFile = "$($modName)_1.0.0.zip"
Remove-Item $modName -Recurse
Remove-Item $zipFile
New-Item $modName -ItemType "directory"
Copy-Item "prototypes" $modName -Recurse
Copy-Item "control.lua" $modName
Copy-Item "data.lua" $modName
Copy-Item "info.json" $modName
Copy-Item "LICENSE" $modName
Compress-Archive $modName $zipFile
Stop-Process -Name "Factorio"
$modFileOnFolder = "$($env:APPDATA)/Factorio/mods/$($zipFile)"
Remove-Item $modFileOnFolder
Copy-Item $zipFile $modFileOnFolder
Remove-Item $modName -Recurse
Remove-Item $zipFile
explorer "steam://rungameid/427520"
