// swift-tools-version: 5.7
// The swift-tools-version is the minimum version to build this package.

import PackageDescription

let package = Package(
    name: "utilities",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        //.library(
        //    name: "argParse",
        //    targets: ["repeat"]),
        .library(name: "utilities", targets: ["diatheke"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.2.0"),
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
        .package(url: "https://github.com/swift-biome/swift-documentation-extract", from: "0.1.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(name: "diatheke", dependencies: [
            //.executableTarget(name: "diatheke", dependencies: [
            //other dependencies
            .product(name: "ArgumentParser", package: "swift-argument-parser"),],
            exclude: ["notes", "g1.swift", "g2.swift" ]
            ),
        //.target(
        //    name: "argParse",
        //    dependencies: ["ArgumentParser"]),
        .testTarget(
            name: "diathekeT1",
            dependencies: ["diatheke", .product(name: "ArgumentParser", package: "swift-argument-parser")]),
    ]
)

