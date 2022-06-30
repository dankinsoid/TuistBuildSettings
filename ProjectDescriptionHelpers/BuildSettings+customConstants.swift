import Foundation

extension BuildSetting {

    public static var injection: BuildSetting {
        .otherLinkerFlags("-Xlinker -interposable").sdk(.iosSimulator)
    }
}