// swift-tools-version:5.3
import PackageDescription

let commonSDKVersion = "6.8.324"
let sdkVersion = "5.1.1466"
let sdkChecksum = "3380d9a19b81512f4dacacb1fd91d26d687c2ac34f8594fcd499559306d3f257"

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
