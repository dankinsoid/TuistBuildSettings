# BuildSettings
Build settings variables and methods for [tuist](https://docs.tuist.io/plugins/using-plugins).

Parsed from [Build Settings](https://xcodebuildsettings.com) 30/06/2022

## Example
```swift
import ProjectDescription
import BuildSettings

let settings: SettingsDictionary = [
    .otherLinkerFlags(["-lz"]).sdk(.iOSSimulator),
    .injection,
    .unusedFunctions(true),
    .enableTestability,
    .bundleLoader(inherit: .testHost)
]
```
