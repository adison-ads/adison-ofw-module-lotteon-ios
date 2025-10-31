// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LotteOnOfwModule",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "LotteOnOfwModule",
            targets: ["LotteOnOfwModule", "LotteOnOfwModuleTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/adison-ads/adison-offerwall-ios-sdk", exact: "3.16.8")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "LotteOnOfwModule",
            url:
                "https://github.com/adison-ads/adison-ofw-module-lotteon-ios/releases/download/0.9.0/LotteOnOfwModule.zip",
            checksum: "671d6f36b53e80afa2762f1414249e6b3d9eb426746179b574581796607e7af0"
        ),
        .target(
            name: "LotteOnOfwModuleTarget",
            dependencies: [
                .product(name: "AdisonOfferwallSDK", package: "adison-offerwall-ios-sdk")
            ],
            path: "Sources"
        ),
    ]
)
