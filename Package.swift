// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TESTSPM",
    platforms: [
      .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TESTSPM",
            targets: ["TESTSPM"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
      .package(url: "https://github.com/Banuba/BanubaVideoEditorSDK-iOS.git", from: "1.20.0"),
      .package(url: "https://github.com/Banuba/BanubaSDKServicing-iOS", from: "1.20.0"),
      .package(url: "https://github.com/Banuba/BanubaUtilities-iOS", from: "1.20.0"),
      .package(url: "https://github.com/Banuba/BanubaLicenseServicingSDK", from: "1.20.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "TESTSPM",
            dependencies: [
              .product(
                name: "BanubaVideoEditorSDK",
                package: "BanubaVideoEditorSDK-iOS"),
              .product(
                name: "BanubaSDKServicing",
                package: "BanubaSDKServicing-iOS"),
            ]),
        .testTarget(
            name: "TESTSPMTests",
            dependencies: ["TESTSPM"]),
    ]
)
