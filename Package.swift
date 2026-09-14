// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationFyberAdapter",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "AppLovinMediationFyberAdapter",
            targets: ["AppLovinMediationFyberAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/inner-active/DTExchangeSDK-iOS-SPM.git", exact: "8.4.10")
    ],
    targets: [
        .target(
            name: "AppLovinMediationFyberAdapterTarget",
            dependencies: [
                .target(name: "AppLovinMediationFyberAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "DTExchangeSDK", package: "DTExchangeSDK-iOS-SPM"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AppLovinMediationFyberAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/fyber-adapter/AppLovinMediationFyberAdapter-8.4.10.1.zip",
            checksum: "8293c1eda2525da47c2f0bb29f225f502bcf3960a14f90d25335db488f09dcfb"
        )
    ]
)
