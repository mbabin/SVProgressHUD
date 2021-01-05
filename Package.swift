// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SVProgressHUD",
    products: [
        .library(
            name: "SVProgressHUD",
            targets: ["SVProgressHUD"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SVProgressHUD",
            dependencies: [],
            path: "SVProgressHUD",
            exclude: [
                "SVProgressHUD-Prefix.pch",
                "SVProgressHUD.bundle"
            ],
            resources: [
                .process("resources/error.png"),
                .process("resources/error@2x.png"),
                .process("resources/error@3x.png"),
                .process("resources/info.png"),
                .process("resources/info@2x.png"),
                .process("resources/info@3x.png"),
                .process("resources/success.png"),
                .process("resources/success@2x.png"),
                .process("resources/success@3x.png"),
            ]
        )
    ]
)
