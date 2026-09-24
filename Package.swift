// swift-tools-version:5.3
import PackageDescription

let packageName = "FaceSDK"

let package = Package(
    name: "FaceSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "FaceSDK",
            targets: ["\(packageName)Common"]),
    ],
    dependencies: [
        .package(name: "RegulaCommon", url: "https://github.com/regulaforensics/RegulaCommon-Swift-Package.git", .exact(Version(stringLiteral: "9.9.2867-nightly"))),
    ],
    targets: [
        .binaryTarget(name: "FaceSDK", url: "https://pods.regulaforensics.com/Nightly/FaceSDKNightly/8.3.4977/FaceSDKNightly-8.3.4977.zip", checksum: "3fe686e0283d9472d65cb1eeab79c2b4610d783a88d55861b32366a2e3f9d3b7"),
        .target(
            name: "\(packageName)Common",
            dependencies: [
                .target(name: "FaceSDK"),
                .product(name: "RegulaCommon", package: "RegulaCommon")
            ],
            path: "Sources",
            sources: ["dummy.swift"]
        )
    ]
)
