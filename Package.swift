// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "webim-client-library",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "webim-client-library",
            targets: ["webim-client-library"]),
    ],
    dependencies: [
        .package(url: "https://github.com/stephencelis/SQLite.swift.git", from: "0.12.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "webim-client-library",
            dependencies: ["SQLite.swift"]),
        .testTarget(
            name: "webim-client-libraryTests",
            dependencies: ["webim-client-library"]),
    ]
)
