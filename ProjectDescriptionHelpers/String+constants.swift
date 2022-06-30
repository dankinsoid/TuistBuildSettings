import Foundation

extension String {

    public static func inherited(from value: String? = nil) -> String {
        "$(\(value ?? "inherited"))"
    }

    public static func executablePath(_ path: String) -> String {
        "@executable_path/\(path)"
    }

    public static func loaderPath(_ path: String) -> String {
        "@loader_path/\(path)"
    }

    public static func rootPath(_ path: String) -> String {
        "$(SRCROOT)/\(path)"
    }
}
