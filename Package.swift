// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "swifty-module",
    platforms: [
       .macOS(.v12)
    ],
    products: [
        .library(name: "SwiftyModule", targets: ["SwiftyModule"]),
    ],
    dependencies: [
        .package(url: "https://github.com/feathercms/feather-core", .revision("a54c9323416e5a45f7a2d9b4ee601444ff04f154")),
        .package(url: "https://github.com/JohnSundell/Splash", from: "0.16.0"),
    ],
    targets: [
        .target(name: "SwiftyModule", dependencies: [
            .product(name: "FeatherCore", package: "feather-core"),
            .product(name: "Splash", package: "Splash"),
        ],
        resources: [
            .copy("Bundle"),
        ]),
    ]
)
