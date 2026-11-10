// swift-tools-version:5.5
import PackageDescription

let packageName = "FaceSDK"

let package = Package(
    name: "FaceSDK",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "FaceSDK",
            targets: ["\(packageName)Common"]),
    ],
    dependencies: [
        .package(
            name: "RegulaCommon",
            url: "https://github.com/regulaforensics/RegulaCommon-Swift-Package.git",
            .exact("9.10.3020-rc")),
    ],
    targets: [
        .binaryTarget(
            name: "FaceSDK",
            url: "https://pods.regulaforensics.com/Stage/FaceSDKStage/8.4.5249/FaceSDKStage-8.4.5249.zip",
            checksum: "97f628205838a2d1746a6e7e9af8d5655a6758df65a1aa5a69362627ae03a06e"),
        .target(
            name: "\(packageName)Common",
            dependencies: [
                .target(name: "FaceSDK"),
                .product(name: "RegulaCommon", package: "RegulaCommon")
            ],
            path: "Sources",
            sources: ["dummy.swift"]
        )
    ]
)
