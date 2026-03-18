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
        .package(url: "https://github.com/adison-ads/adison-offerwall-ios-sdk", exact: "3.16.10")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "LotteOnOfwModule",
            url:
                "https://github.com/adison-ads/adison-ofw-module-lotteon-ios/releases/download/0.9.6/LotteOnOfwModule.zip",
            checksum: "981bccf0d36b07a97b115a291123a341863eecf4b929c63641f717f3cee72d06"
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
