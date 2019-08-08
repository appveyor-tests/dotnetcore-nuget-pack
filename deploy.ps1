- ps: |
    $expectedPackageName = "dotnetcore-nuget-pack.$env:appveyor_build_version.nupkg"
    if (($artifacts.values | Where-Object {$_.path.EndsWith($expectedPackageName)}) -eq $null) {throw "dotnetcore nuget package was not created"}
    $expectedSymbolsName = "dotnetcore-nuget-pack.$env:appveyor_build_version.symbols.nupkg"
    if (($artifacts.values | Where-Object {$_.path.EndsWith($expectedSymbolsName)}) -eq $null) {throw "dotnetcore nuget symbols package was not created"}
    $expectedPackageName = "dotnetstandard-nuget-pack.$env:appveyor_build_version.nupkg"
    if (($artifacts.values | Where-Object {$_.path.EndsWith($expectedPackageName)}) -eq $null) {throw "dotnetstandard nuget package was not created"}
    $expectedSymbolsName = "dotnetstandard-nuget-pack.$env:appveyor_build_version.symbols.nupkg"
    if (($artifacts.values | Where-Object {$_.path.EndsWith($expectedSymbolsName)}) -eq $null) {throw "dotnetstandard nuget symbols package was not created"}
    $expectedPackageName = "classicdotnet-nuget-pack.$env:appveyor_build_version.nupkg"
    if (($artifacts.values | Where-Object {$_.path.EndsWith($expectedPackageName)}) -eq $null) {throw "classic .net nuget package was not created"}
    $expectedSymbolsName = "classicdotnet-nuget-pack.$env:appveyor_build_version.symbols.nupkg"
    if (($artifacts.values | Where-Object {$_.path.EndsWith($expectedSymbolsName)}) -eq $null) {throw "classic .net nuget symbols package was not created"}
    
    $expectedPackageName = "dotnetcore-xunit-test.$env:appveyor_build_version.nupkg"
    if (($artifacts.values | Where-Object {$_.path.EndsWith($expectedPackageName)}) -eq $null) {throw "dotnetcore-xunit-test nuget package was not created (IsPackable: True)"}
    $expectedSymbolsName = "dotnetcore-xunit-test.$env:appveyor_build_version.symbols.nupkg"
    if (($artifacts.values | Where-Object {$_.path.EndsWith($expectedSymbolsName)}) -eq $null) {throw "dotnetcore-xunit-test symbols package was not created (IsPackable: True)"}
    $expectedPackageName = "dotnetcore-unit-test.$env:appveyor_build_version.nupkg"
    if (($artifacts.values | Where-Object {$_.path.EndsWith($expectedPackageName)}) -ne $null) {throw "dotnetcore-unit-test nuget package was created (IsPackable: false)"}
    $expectedSymbolsName = "dotnetcore-unit-test.$env:appveyor_build_version.symbols.nupkg"
    if (($artifacts.values | Where-Object {$_.path.EndsWith($expectedSymbolsName)}) -ne $null) {throw "dotnetcore-unit-test symbols package was created (IsPackable: false)"}
