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
        .binaryTarget(name: "DarockAccountUI", url: "https://github.com/darock-studio/darockaccountui/releases/download/1.0.8/DarockAccountUI.xcframework.zip", checksum: "d6faca4850099cd56e924a699b4c0a20edec5ac396445d9924186e06f1265d54"),
        .target(name: "_DarockAccountUIDependenciesWrapper", dependencies: [
            "DarockFoundation",
            "NotifKit"
        ])
    ]
)
