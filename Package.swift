// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "FaceSDK",
    products: [
        .library(name: "FaceSDK", targets: ["FaceSDK"])
    ],
    targets: [
        .binaryTarget(
            name: "FaceSDK",
            url: "https://pods.regulaforensics.com/FaceSDK/3.0.792/FaceSDK-3.0.792.zip",
            checksum: "728a05d4ca776d723b2d244bb24bd7d288df54151f1a22f3f622381857463438"
        )
    ]
)