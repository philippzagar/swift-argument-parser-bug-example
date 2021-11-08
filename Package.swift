// swift-tools-version:5.5

import PackageDescription


let package = Package(
    name: "swift-argument-parser-example",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .executable(name: "ArgumentParserExample", targets: ["ArgumentParserExample"])
    ],
    dependencies: [
        //.package(url: "https://github.com/apple/swift-argument-parser", .upToNextMinor(from: "0.4.0"))
        //.package(url: "https://github.com/apple/swift-argument-parser", .upToNextMinor(from: "0.5.0"))
        .package(url: "https://github.com/apple/swift-argument-parser", .upToNextMinor(from: "1.0.0"))
    ],
    targets: [
        .executableTarget(
            name: "ArgumentParserExample",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]
        )
    ]
)
