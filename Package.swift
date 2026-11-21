// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CloudXMagniteAdapter",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "CloudXMagniteAdapter",
            targets: ["CloudXMagniteAdapterPackage"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-core.git",
            from: "3.9.1"
        ),
        .package(
            url: "https://github.com/MagniteEngineering/swift-package-manager.git",
            exact: "1.0.6"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXMagniteAdapter",
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-magnite/releases/download/binary/1000600.0.0/CloudXMagniteAdapter.xcframework.zip",
            checksum: "baf5da2f2211a5f48b32301f671b8fffda209113d9c22f93c0a678a94c1e4c1d"
        ),
        .target(
            name: "CloudXMagniteAdapterPackage",
            dependencies: [
                "CloudXMagniteAdapter",
                .product(name: "CloudXCore", package: "cloudx-ios-swift-package-core"),
                .product(name: "MagniteSDK", package: "swift-package-manager"),
            ]
        ),
        .testTarget(
            name: "CloudXMagniteAdapterSwiftTests",
            dependencies: ["CloudXMagniteAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
        .testTarget(
            name: "CloudXMagniteAdapterObjCTests",
            dependencies: ["CloudXMagniteAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
    ]
)
