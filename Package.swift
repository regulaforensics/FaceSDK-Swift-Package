// swift-tools-version:5.3
import PackageDescription

let commonSDKVersion = "0.1.16"
let sdkVersion = "3.0.798"
let sdkChecksum = "1cbd6e5aed1bfa5fbb0e314ff2423bdcd26cb8d089025fa0ee769a5ac17f093e"

let package = Package(
    name: "FaceSDK",
    platforms: [.iOS(.v9)],
    products: [
        .library(name: "FaceSDK", targets: ["FaceSDKDeps"])
    ],
    dependencies: [
        .package(name: "RegulaCommon", url: "https://github.com/regulaforensics/RegulaCommon-Swift-Package", .exact(Version(stringLiteral: commonSDKVersion))),
    ],
    targets: [
        .binaryTarget(
            name: "FaceSDKBinary",
            url: "https://pods.regulaforensics.com/FaceSDK/\(sdkVersion)/FaceSDK-\(sdkVersion).zip",
            checksum: sdkChecksum
        ),
        .target(
            name: "FaceSDKDeps",
            dependencies: [
                .target(name: "FaceSDKBinary"),
                .product(name: "RegulaCommon", package: "RegulaCommon")
            ],
            path: "Sources",
            sources: ["dummy.swift"]
        )
    ]
)
