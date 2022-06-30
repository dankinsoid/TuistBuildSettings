# BuildSettings
Build settings variables and methods for [tuist](https://docs.tuist.io/plugins/using-plugins).

Parsed from [Build Settings](https://xcodebuildsettings.com)

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
