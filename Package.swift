// swift-tools-version:5.3
import PackageDescription

let packageName = "FaceSDK"

let package = Package(
    name: "FaceSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "FaceSDK",
            targets: ["\(packageName)Common"]),
    ],
    dependencies: [
        .package(name: "RegulaCommon", url: "https://github.com/regulaforensics/RegulaCommon-Swift-Package.git", .exact(Version(stringLiteral: "9.6.2480-beta"))),
    ],
    targets: [
        .binaryTarget(name: "FaceSDK", url: "https://pods.regulaforensics.com/FaceSDKBeta/8.3.4498/FaceSDKBeta-8.3.4498.zip", checksum: "75cee7f0599b5f9ada59b718225ce0a69d6e2bfdc323467c85e206928bdf830d"),
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
