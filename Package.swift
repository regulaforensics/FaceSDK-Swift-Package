// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "FaceSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "FaceSDK",
            targets: ["FaceSDKNightly"]),
    ],
    targets: [
        .binaryTarget(name: "FaceSDKNightly", url: "https://pods.regulaforensics.com/Nightly/FaceSDKNightly/8.3.4590/FaceSDKNightly-8.3.4590.zip", checksum: "356aaf19981582d8b6902aa3fcf7b7860d2788fb2b1a61bea5aec805197ff5ee"),
    ]
)
