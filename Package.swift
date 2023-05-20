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
            url: "https://github.com/mjtalbot/rive-ios/releases/download/3.1.18/RiveRuntime.xcframework.zip",
            checksum: "62a09c67286d2875d32dc5312b942448a61a75d97d9fc54bf42b0faacbf841f5"
        ),
    ]
)
