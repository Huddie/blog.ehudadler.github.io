// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Ehudadlerblog",
    products: [
        .executable(name: "Ehudadlerblog", targets: ["Ehudadlerblog"])
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.3.0")
    ],
    targets: [
        .target(
            name: "Ehudadlerblog",
            dependencies: ["Publish"]
        )
    ]
)