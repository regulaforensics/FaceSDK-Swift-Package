// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "FaceSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "FaceSDK",
            targets: ["FaceSDKStage"]),
    ],
    targets: [
        .binaryTarget(name: "FaceSDKStage", url: "https://pods.regulaforensics.com/Stage/FaceSDKStage/8.3.4614/FaceSDKStage-8.3.4614.zip", checksum: "bfaa2af75470146357965ac1840ad0ce66fa0dd10afd85e91f3e6b37bd5a7b98"),
    ]
)
