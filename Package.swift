// swift-tools-version:5.3
import PackageDescription

let commonSDKVersion = "6.8.324"
let sdkVersion = "5.1.1472"
let sdkChecksum = "377dbdcb6d8202f54071c0b42fc5cbc220c46ead59778c29e5c04acf1f5a357d"

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
