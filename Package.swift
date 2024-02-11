// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-format-build-plugin",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .plugin(
            name: "FormatBuildPlugin",
            targets: ["Format Build Plugin"]
        ),
        .plugin(
            name: "LintBuildPlugin",
            targets: ["Lint Build Plugin"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-format.git", from: Version(509, 0, 0)),
    ],
    targets: [
        .plugin(
          name: "Format Build Plugin",
          capability: .buildTool(),
          dependencies: [
              .product(name: "swift-format", package: "swift-format")
          ],
          path: "Plugins/FormatBuildPlugin"
        ),
        .plugin(
            name: "Lint Build Plugin",
            capability: .buildTool(),
            dependencies: [
                .product(name: "swift-format", package: "swift-format")
            ],
            path: "Plugins/LintBuildPlugin"
        )
    ]
)
