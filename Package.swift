// swift-tools-version:5.2

import PackageDescription

let package = Package(
  name: "swift-case-paths",
  products: [
    .library(
      name: "CasePaths",
      targets: ["CasePaths"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/tgrapperon/swift-measure", from: "0.0.1")
  ],
  targets: [
    .target(
      name: "CasePaths"
    ),
    .testTarget(
      name: "CasePathsTests",
      dependencies: ["CasePaths"]
    ),
    .target(
      name: "swift-case-paths-benchmark",
      dependencies: [
        "CasePaths",
        .product(name: "Benchmark", package: "swift-measure"),
      ]
    ),
  ]
)
