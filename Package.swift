// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "RiveRuntime",
    platforms: [.iOS("14.0"), .macOS("13.1")],
    products: [
        .library(
            name: "RiveRuntime",
            targets: ["RiveRuntime"])],
    targets: [
        .binaryTarget(
            name: "RiveRuntime",
            url: "https://github.com/mjtalbot/rive-ios/releases/download/3.1.21/RiveRuntime.xcframework.zip",
            checksum: "cae08f3c9fd4063ae0a8b564e4d7159a50bc7cadc36ebf79cab12c8af9c0c8e9"
        ),
    ]
)
