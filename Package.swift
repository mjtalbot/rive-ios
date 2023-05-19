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
            url: "https://github.com/mjtalbot/rive-ios/releases/download/3.1.16/RiveRuntime.xcframework.zip",
            checksum: "ec5bcd05ad3fe419643ab59e3bb80e27ebb3585f6ebc8040d30e3a1bf1f13f5e"
        ),
    ]
)
