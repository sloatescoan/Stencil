// swift-tools-version:6.0
import PackageDescription

let package = Package(
  name: "Stencil",
  products: [
    .library(name: "Stencil", targets: ["Stencil"])
  ],
  dependencies: [
    .package(url: "https://github.com/kylef/PathKit.git", from: "1.0.1"),
    .package(url: "https://github.com/kylef/Spectre.git", from: "0.10.1")
  ],
  targets: [
    .target(
      name: "Stencil",
      dependencies: [
        "PathKit"
      ]
    ),
    .testTarget(name: "StencilTests", dependencies: [
      "Stencil",
      "Spectre"
    ])
  ],
  swiftLanguageModes: [.v6]
)
