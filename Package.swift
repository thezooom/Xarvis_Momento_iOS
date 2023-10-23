// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "XarvisMomento-iOS",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "XarvisMomento-iOS",
            targets: ["XarvisMomento-iOS"]),
    ],
    dependencies: [
        .package(url: "https://github.com/thezooom/Xarvis_iOS.git", from: "0.0.0"),
        .package(url: "https://github.com/momento-ads/momento-ios-sdk.git", from: "1.0.5"),
    ],
    targets: [
        .target(
            name: "XarvisMomento-iOS",
            dependencies: [
                .product(name: "Xarvis_Framwork", package: "Xarvis_iOS"),
                .product(name: "Momento_iOS", package: "momento-ios-sdk"),
            ]),
        .testTarget(
            name: "XarvisMomento-iOSTests",
            dependencies: ["XarvisMomento-iOS"]),
    ]
)
