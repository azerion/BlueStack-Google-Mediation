// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BlueStackGoogleMediationAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "BlueStackGoogleMediationAdapter",
            targets: ["BlueStackGoogleMediationAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/azerion/BlueStackSDK.git", from: "6.0.2"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", .upToNextMajor(from: "13.0.0"))
    ],
    targets: [
        .target(
            name: "BlueStackGoogleMediationAdapterTarget",
            dependencies: [
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .target(name: "BlueStackGoogleMediationAdapter", condition: .when(platforms: [.iOS])),
                .product(name: "BlueStackSDK", package: "BlueStackSDK", condition: .when(platforms: [.iOS]))
            ],
            path: "BlueStackGoogleMediationAdapterWrapper"
        ),
        .binaryTarget(
            name: "BlueStackGoogleMediationAdapter",
            path: "BlueStackGoogleMediationAdapter.xcframework"
        )
    ]
)
