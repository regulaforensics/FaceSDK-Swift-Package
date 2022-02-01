// swift-tools-version:5.3
import PackageDescription

let commonSDKVersion = "template"
let sdkVersion = "template"
let sdkChecksum = "template"

let package = Package(
    name: "FaceSDK",
    platforms: [.iOS(.v11)],
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
