// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Eureka",
    platforms: [.iOS(.v9)],
    products: [
        .library(name: "Eureka", type: .dynamic, targets: ["Eureka"]),
    ],
    targets: [
        .target(
            name: "Eureka",
            path: "Source",
            swiftSettings: [
                .define("-DSWIFT_ENFORCE_EXCLUSIVE_ACCESS=off")
            ]
        ),
        .testTarget(
            name: "EurekaTests",
            dependencies: ["Eureka"],
            path: "Tests"
        )
    ]
)
