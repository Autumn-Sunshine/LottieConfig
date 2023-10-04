// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LottieConfig",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "LottieConfig",
            targets: ["LottieConfig"]),
    ],
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-ios", from: "4.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "LottieConfig",
            dependencies: [
                .product(name: "Lottie", package: "lottie-ios"),
            ]
        ),
        .testTarget(
            name: "LottieConfigTests",
            dependencies: ["LottieConfig"]),
    ]
)
