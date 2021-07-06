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
            url: "https://pods.regulaforensics.com/FaceSDKBeta/5.4.695/FaceSDKBeta-5.4.695.zip",
            checksum: "c07f449c715b4111e4794a20dc585acd6171fc4b149ad9f951c89305012e8506"
        )
    ]
)