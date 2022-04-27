// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "QuickJS",
    platforms: [
        .macOS(.v11),
        .iOS(.v14),
        .watchOS(.v3)
    ],
    products: [
        .library(name: "QuickJS", targets: ["QuickJS"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "QuickJSC",
            dependencies: [],
            path: "Sources/QuickJSC"),
        .target(
            name: "QuickJS",
            dependencies: ["QuickJSC"],
            path: "Sources",
            sources: ["QuickJS"],
            cSettings: [
                .headerSearchPath("QuickJS")
            ]
            )
    ]
)
