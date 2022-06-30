import Foundation
import ProjectDescription

public struct BuildSetting: Codable {
    
    public var key: BuildSettingsKey
    public var sdk: SDK?
    public var value: SettingValue

    public var fullKey: String {
        if let sdk = sdk {
            return "\(key)[sdk=\(sdk)]"
        } else {
            return key.value
        }
    }
    
    public init(key: BuildSettingsKey, sdk: SDK? = nil, value: SettingValue) {
        self.key = key
        self.value = value
        self.sdk = sdk
    }

    public init(key: BuildSettingsKey, sdk: SDK? = nil, inherit other: BuildSettingsKey) {
        self.key = key
        value = .string(.inherited(from: other.value))
        self.sdk = sdk
    }

    public func sdk(_ sdk: SDK) -> BuildSetting {
        var result = self
        result.sdk = sdk
        return result
    }
}

extension BuildSetting: CustomStringConvertible {

    public var description: String {
        "\(fullKey) = \(value)"
    }
}
