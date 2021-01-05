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
                .process("SVProgressHUD.bundle/error.png"),
                .process("SVProgressHUD.bundle/error@2x.png"),
                .process("SVProgressHUD.bundle/error@3x.png"),
                .process("SVProgressHUD.bundle/info.png"),
                .process("SVProgressHUD.bundle/info@2x.png"),
                .process("SVProgressHUD.bundle/info@3x.png"),
                .process("SVProgressHUD.bundle/success.png"),
                .process("SVProgressHUD.bundle/success@2x.png"),
                .process("SVProgressHUD.bundle/success@3x.png"),
            ]
        )
    ]
)
