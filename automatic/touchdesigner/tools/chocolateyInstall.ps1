$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'touchdesigner'
  fileType               = 'exe'
  url64bit               = 'https://download.derivative.ca/TouchDesignerWebInstaller.2025.33070.exe'
  checksum64             = '42971F7BA7AE93A6E8220AFDAFB64492EDEC7E4C8366F6E6BFD0900E62D404AD'
  checksumType64         = 'sha256'
  silentArgs             = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes         = @(0)
  softwareName           = 'TouchDesigner*'
}

Write-Host
Write-Host "For commercial use of TouchDesigner, you need a commercial or pro license." -ForegroundColor "White"
Write-Host "See: https://www.derivative.ca/shop/" -ForegroundColor "White"
Write-Host

Install-ChocolateyPackage @packageArgs