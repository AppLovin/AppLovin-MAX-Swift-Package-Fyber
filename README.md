# AppLovin MAX - iOS Fyber (DT Exchange) Mediation Adapter

The AppLovin MAX Fyber / Digital Turbine Exchange mediation adapter for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 13.0+
- Xcode 15.0+
- AppLovin MAX iOS SDK 13.0.0+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/AppLovin/AppLovin-MAX-Swift-Package-Fyber
   ```
3. Select **Exact Version** and enter the encoded version (e.g. `8040700.0.0` for adapter version `8.4.7.0`).
4. Add the `AppLovinMediationFyberAdapter` product to your app target.
5. In your target's **Build Settings**, add `-ObjC` to **Other Linker Flags**.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package-Fyber.git",
        exact: "8040700.0.0"
    )
]
```

## Included dependencies

- [`AppLovinSDK`](https://github.com/AppLovin/AppLovin-MAX-Swift-Package) (>= 13.0.0)
- [`DTExchangeSDK`](https://github.com/inner-active/DTExchangeSDK-iOS-SPM) (pinned to the version certified for this adapter release)

## More information

- [AppLovin MAX iOS Integration Guide](https://support.applovin.com/en/max/ios/overview/integration)
