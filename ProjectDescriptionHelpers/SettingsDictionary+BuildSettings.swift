import ProjectDescription
import Foundation

extension Dictionary: ExpressibleByArrayLiteral where Key == String, Value == SettingValue {

    public init(_ values: [BuildSetting]) {
        self = Dictionary(values.map { ($0.fullKey, $0.value) }, uniquingKeysWith: join)
    }

    public init(_ values: BuildSetting...) {
        self.init(values)
    }

    public init(arrayLiteral elements: (BuildSetting)...) {
        self.init(elements)
    }
}

private func join(_ lhs: SettingValue, _ rhs: SettingValue) -> SettingValue {
    .array(lhs.asArray + rhs.asArray)
}

private extension SettingValue {

    var asArray: [String] {
        switch self {
        case .string(let value):
            return [value]
        case .array(let values):
            return values
        @unknown default:
            return []
        }
    }
}
