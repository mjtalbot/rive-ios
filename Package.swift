// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "RiveRuntime",
    platforms: [.iOS("14.0")],
    products: [
        .library(
            name: "RiveRuntime",
            targets: ["RiveRuntime"])],
    targets: [
        .binaryTarget(
            name: "RiveRuntime",
            url: "https://github.com/rive-app/rive-ios/releases/download/3.1.14/RiveRuntime.xcframework.zip",
            checksum: "c646b2a8bdad430aef1956791ca982701c57c02a974448b601f8be169b2ab9e0"
        ),
    ]
)
