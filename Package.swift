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
            url: "https://github.com/mjtalbot/rive-ios/releases/download/3.1.15/RiveRuntime.xcframework.zip",
            checksum: "1464ff9e1b71f2db4ef3867b5cf8ea335c02ff3ae0ccdafa8123322e804a8568"
        ),
    ]
)
