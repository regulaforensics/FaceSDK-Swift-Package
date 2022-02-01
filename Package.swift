// swift-tools-version:5.3
import PackageDescription

let commonSDKVersion = "6.1.102"
let sdkVersion = "3.2.1061"
let sdkChecksum = "54626ac95843354a1fb00d3820d8d4918ba4eb7b0a574a4b003e04dc8c2f79ca"

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
