$zipFile = "TidyFactoryReborn_1.0.0.zip"
Remove-Item $zipFile
$compress = @{
  Path = "prototypes", "control.lua", "data.lua", "info.json", "LICENSE"
  CompressionLevel = "Fastest"
  DestinationPath = $zipFile
}
Compress-Archive @compress
Stop-Process -Name "Factorio"
$modFileOnFolder = "$($env:APPDATA)/Factorio/mods/$($zipFile)"
Remove-Item $modFileOnFolder
Copy-Item $zipFile $modFileOnFolder

