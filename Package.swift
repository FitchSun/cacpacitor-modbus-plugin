// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorModbus",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "CapacitorModbus",
            targets: ["ModbusPluginPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "ModbusPluginPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/ModbusPluginPlugin"),
        .testTarget(
            name: "ModbusPluginPluginTests",
            dependencies: ["ModbusPluginPlugin"],
            path: "ios/Tests/ModbusPluginPluginTests")
    ]
)