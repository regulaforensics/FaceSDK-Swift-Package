// swift-tools-version:5.3
import PackageDescription

let commonSDKVersion = "5.8.59"
let sdkVersion = "3.1.952"
let sdkChecksum = "7b86a1b3afa90a5c6a37ba5bdf179933cc5f0f6f2843d6f8cdbd1aa2215cc048"

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
            name: "FaceSDK",
            url: "https://pods.regulaforensics.com/FaceSDK/\(sdkVersion)/FaceSDK-\(sdkVersion).zip",
            checksum: sdkChecksum
        ),
        .target(
            name: "FaceSDKDeps",
            dependencies: [
                .target(name: "FaceSDK"),
                .product(name: "RegulaCommon", package: "RegulaCommon")
            ],
            path: "Sources",
            sources: ["dummy.swift"]
        )
    ]
)
