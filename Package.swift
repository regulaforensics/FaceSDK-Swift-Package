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
        .package(name: "RegulaCommon", url: "https://github.com/regulaforensics/RegulaCommon-Swift-Package.git", .exact(Version(stringLiteral: "8.3.1543"))),
    ],
    targets: [
        .binaryTarget(name: "FaceSDK", url: "https://pods.regulaforensics.com/FaceSDK/7.2.3134/FaceSDK-7.2.3134.zip", checksum: "be5e1c849069fc3bbcde905d20a75d33e26261c09b8242e264a383939cd19a0e"),
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
