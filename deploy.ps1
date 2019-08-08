Write-Output "Entered deploy_script..."
Write-Output "Verify dotnetcore nuget package was created."
$expectedPackageName = "dotnetcore-nuget-pack.$env:appveyor_build_version.nupkg"
if (($artifacts.values | Where-Object {$_.path.EndsWith($expectedPackageName)}) -eq $null) {throw "dotnetcore nuget package was not created"}
$expectedSymbolsName = "dotnetcore-nuget-pack.$env:appveyor_build_version.symbols.nupkg"
if (($artifacts.values | Where-Object {$_.path.EndsWith($expectedSymbolsName)}) -eq $null) {throw "dotnetcore nuget symbols package was not created"}
Write-Output "Verify dotnetstandard nuget package was created."
$expectedPackageName = "dotnetstandard-nuget-pack.$env:appveyor_build_version.nupkg"
if (($artifacts.values | Where-Object {$_.path.EndsWith($expectedPackageName)}) -eq $null) {throw "dotnetstandard nuget package was not created"}
$expectedSymbolsName = "dotnetstandard-nuget-pack.$env:appveyor_build_version.symbols.nupkg"
if (($artifacts.values | Where-Object {$_.path.EndsWith($expectedSymbolsName)}) -eq $null) {throw "dotnetstandard nuget symbols package was not created"}
Write-Output "Verify classic .net nuget package was created."
$expectedPackageName = "classicdotnet-nuget-pack.$env:appveyor_build_version.nupkg"
if (($artifacts.values | Where-Object {$_.path.EndsWith($expectedPackageName)}) -eq $null) {throw "classic .net nuget package was not created"}
$expectedSymbolsName = "classicdotnet-nuget-pack.$env:appveyor_build_version.symbols.nupkg"
if (($artifacts.values | Where-Object {$_.path.EndsWith($expectedSymbolsName)}) -eq $null) {throw "classic .net nuget symbols package was not created"}
Write-Output "Verify dotnetcore-xunit-test nuget package was created."    
$expectedPackageName = "dotnetcore-xunit-test.$env:appveyor_build_version.nupkg"
if (($artifacts.values | Where-Object {$_.path.EndsWith($expectedPackageName)}) -eq $null) {throw "dotnetcore-xunit-test nuget package was not created (IsPackable: True)"}
$expectedSymbolsName = "dotnetcore-xunit-test.$env:appveyor_build_version.symbols.nupkg"
if (($artifacts.values | Where-Object {$_.path.EndsWith($expectedSymbolsName)}) -eq $null) {throw "dotnetcore-xunit-test symbols package was not created (IsPackable: True)"}
Write-Output "Verify dotnetcore-unit-test nuget package was created."    
$expectedPackageName = "dotnetcore-unit-test.$env:appveyor_build_version.nupkg"
if (($artifacts.values | Where-Object {$_.path.EndsWith($expectedPackageName)}) -ne $null) {throw "dotnetcore-unit-test nuget package was created (IsPackable: false)"}
$expectedSymbolsName = "dotnetcore-unit-test.$env:appveyor_build_version.symbols.nupkg"
if (($artifacts.values | Where-Object {$_.path.EndsWith($expectedSymbolsName)}) -ne $null) {throw "dotnetcore-unit-test symbols package was created (IsPackable: false)"}
Write-Output "Finished tests."
