// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-format-build-plugin",
    products: [
        // Products can be used to vend plugins, making them visible to other packages.
        .plugin(
            name: "swift-format-build-plugin",
            targets: ["swift-format-build-plugin"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .plugin(
            name: "swift-format-build-plugin",
            capability: .buildTool()
        ),
    ]
)
