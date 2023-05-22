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
            url: "https://github.com/mjtalbot/rive-ios/releases/download/3.1.19/RiveRuntime.xcframework.zip",
            checksum: "b0dca45dd206cfc9ff260dd9e2fca928dd536d862e93930f88144d160b57a5d5"
        ),
    ]
)
