// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FHShared",
    products: [
        .library(
            name: "FHShared",
            targets: ["FHShared"]),
    ],
    targets: [
        .target(
            name: "FHShared",
            dependencies: []),
    ]
)
