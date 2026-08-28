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
        .package(name: "RegulaCommon", url: "https://github.com/regulaforensics/RegulaCommon-Swift-Package.git", .exact(Version(stringLiteral: "9.8.2707-rc"))),
    ],
    targets: [
        .binaryTarget(name: "FaceSDK", url: "https://pods.regulaforensics.com/Stage/FaceSDKStage/8.3.4806/FaceSDKStage-8.3.4806.zip", checksum: "f0ec9da58f2927b2ce81db633a80caf1c2443587824e0e7f3e715caee1b7cdbe"),
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
