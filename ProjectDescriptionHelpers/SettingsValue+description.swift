import ProjectDescription
import Foundation

extension SettingValue: CustomStringConvertible {

    public var description: String {
        switch self {
        case .string(let value):
            return value
        case .array(let values):
            return "(\(values.joined(separator: ",")))"
        @unknown default:
            return "unknown"
        }
    }
}
