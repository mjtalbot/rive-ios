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
            url: "https://github.com/mjtalbot/rive-ios/releases/download/3.1.20/RiveRuntime.xcframework.zip",
            checksum: "1e46c25bada215ee89c8ba6ba93fc0b4da8e21ae7745ee0c26c2bb9ba8dd8e76"
        ),
    ]
)
