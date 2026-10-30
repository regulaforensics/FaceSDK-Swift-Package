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
            .exact("9.10.2991-rc")),
    ],
    targets: [
        .binaryTarget(
            name: "FaceSDK",
            url: "https://pods.regulaforensics.com/Stage/FaceSDKStage/8.5.5192/FaceSDKStage-8.5.5192.zip",
            checksum: "35e939774baaadeceac99d59794ae72780baabdef6f0d2d6a6fc0fe47d0bc443"),
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
