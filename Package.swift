// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "NetworkingKit",
    products: [
        .library(
            name: "NetworkingKit",
            targets: ["NetworkingKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "5.0.0")
    ],
    targets: [
        .target(
            name: "NetworkingKit",
            dependencies: ["RxSwift", "RxCocoa"]),
        .testTarget(
            name: "NetworkingKitTests",
            dependencies: ["NetworkingKit", "RxSwift", "RxCocoa"]),
    ]
)
