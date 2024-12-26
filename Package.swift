// swift-tools-version:5.3
import PackageDescription

let packageName = "FaceSDK"

let package = Package(
    name: "FaceSDK",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "FaceSDK",
            targets: ["\(packageName)Common"]),
    ],
    dependencies: [
        .package(name: "RegulaCommon", url: "https://github.com/regulaforensics/RegulaCommon-Swift-Package.git", .exact(Version(stringLiteral: "7.5.935"))),
    ],
    targets: [
        .binaryTarget(name: "FaceSDK", url: "https://pods.regulaforensics.com/FaceSDK/6.4.2321/FaceSDK-6.4.2321.zip", checksum: "52e32bc8b71a0cd11e84da15ed7653d8fdf9ac461a49795fd059478cbd5f9bae"),
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
