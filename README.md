BlueStack Mediation Adapter for iOS platform for Google

# BlueStackGoogleMediationAdapter

Using BlueStackGoogleyMediationAdapter you will be able to show BlueStack ads through Google SDK. 

## Supported ad formats
- Banner/MREC
- Interstitial
- Rewarded
- Native Ads

## Requirements
- Xcode 15.1
- iOS: 13

## Integrate BlueStackGoogleMediationAdapter in your application project

### Using Cocoapods
In the `Podfile` of your application project add `BlueStackGoogleMediationAdapter` dependency

```shell
pod 'BlueStackGoogleMediationAdapter'
```
and run `pod install --repo-update` in you terminal.

### Using Swift Package Manager (SPM)

- Go to the project settings and select `Package Dependencies`
- Search for https://github.com/azerion/BlueStack-Google-Mediation.git and add `BlueStackGoogleMediationAdapter` to your target.

**Note:** Add `-ObjC` to you `Other Linker Flags` of target build settings. 

### Documentation

Please visit https://developers.bluestack.app/ios/mediation/secondary/gma