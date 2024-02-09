// swift-tools-version:4.2
import PackageDescription

let package = Package(
  name: "SwiftIslandApi",
  dependencies: [
    // 💧 A server-side Swift web framework.
    .package(url: "https://github.com/vapor/vapor.git", .upToNextMinor(from: "4.90.0")),
//    .package(url: "https://github.com/vapor/fluent-sqlite.git", .upToNextMinor(from: "3.0.0"))
  ],
  targets: [
    .target(name: "App", dependencies: ["Vapor", /*"FluentSQLite"*/]),
    .target(name: "Run", dependencies: ["App"]),
    .testTarget(name: "AppTests", dependencies: ["App"]),
  ]
)

