// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "move_to_background",
    platforms: [
        .iOS("13.0"),
    ],
    products: [
        .library(name: "move-to-background", targets: ["move_to_background"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "move_to_background",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
            publicHeadersPath: "include"
        )
    ]
)
