import Foundation

public struct BuildSettingsKey: Hashable {

    public var value: String

    public init(_ key: String) {
        value = key
    }
}

extension BuildSettingsKey: CustomStringConvertible {

    public var description: String { value }
}

extension BuildSettingsKey: ExpressibleByStringInterpolation {

    public init(stringLiteral value: String) {
        self.init(value)
    }
}

extension BuildSettingsKey: Decodable {

    public init(from decoder: Decoder) throws {
        self = try BuildSettingsKey(String(from: decoder))
    }
}

extension BuildSettingsKey: Encodable {

    public func encode(to encoder: Encoder) throws {
        try value.encode(to: encoder)
    }
}
