// swift-tools-version:5.3

import PackageDescription

let sdkVersion = "3.0.798"
let sdkChecksum = "1cbd6e5aed1bfa5fbb0e314ff2423bdcd26cb8d089025fa0ee769a5ac17f093e"

let package = Package(
    name: "FaceSDK",
    products: [
        .library(name: "FaceSDK", targets: ["FaceSDK"])
    ],
    targets: [
        .binaryTarget(
            name: "FaceSDK",
            url: "https://pods.regulaforensics.com/FaceSDK/\(sdkVersion)/FaceSDK-\(sdkVersion).zip",
            checksum: sdkChecksum
        )
    ]
)