// swift-tools-version:5.3

import PackageDescription

let faceSDKVersion = "3.0.792"
let faceSDKChecksum = "728a05d4ca776d723b2d244bb24bd7d288df54151f1a22f3f622381857463438"

let package = Package(
    name: "FaceSDK",
    products: [
        .library(name: "FaceSDK", targets: ["FaceSDK"])
    ],
    targets: [
        .binaryTarget(
            name: "FaceSDK",
            url: "https://pods.regulaforensics.com/FaceSDK/\(faceSDKVersion)/FaceSDK-\(faceSDKVersion).zip",
            checksum: faceSDKChecksum
        )
    ]
)