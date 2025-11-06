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
                "https://github.com/adison-ads/adison-ofw-module-lotteon-ios/releases/download/0.9.2/LotteOnOfwModule.zip",
            checksum: "729a4151fcc77726a4c3d04fbae8ec1db460149d709931acdd80afff542cd0e9"
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
