import Foundation

public struct SDK: Hashable, Codable {

    public var name: String?
    public var version: String?

    public init(name: String?, version: String? = nil) {
        self.name = name
        self.version = version
    }

    public func version(_ version: String?) -> SDK {
        var result = self
        result.version = version
        return result
    }
}

extension SDK: CustomStringConvertible {

    public var description: String {
        "\(name ?? "")\(version ?? "*")"
    }
}

extension SDK {

    public static var any: SDK {
        SDK(name: nil, version: nil)
    }

    public static let macOS = SDK(name: "macosx")
    public static let driverKit = SDK(name: "driverkit")
    public static let iOS = SDK(name: "iphoneos")
    public static let iOSSimulator = SDK(name: "iphonesimulator")
    public static let tvOS = SDK(name: "appletvos")
    public static let tvOSSimulator = SDK(name: "appletvsimulator")
    public static let watchOS = SDK(name: "watchos")
    public static let watchOSSimulator = SDK(name: "watchsimulator")
}
