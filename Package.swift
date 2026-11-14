// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DarockAccountUI",
    products: [
        .library(name: "DarockAccountUI", targets: ["DarockAccountUI", "_DarockAccountUIDependenciesWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Darock-Studio/DarockFoundation", from: "1.0.2"),
        .package(url: "https://github.com/Darock-Studio/NotifKit", from: "1.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "DarockAccountUI", url: "https://github.com/darock-studio/darockaccountui/releases/download/1.0.13/DarockAccountUI.xcframework.zip", checksum: "3b502a8e5b1ffe53b02811607590fb9d8893893ddf67f72a910c8dbae2aec0a6"),
        .target(name: "_DarockAccountUIDependenciesWrapper", dependencies: [
            "DarockFoundation",
            "NotifKit"
        ])
    ]
)
