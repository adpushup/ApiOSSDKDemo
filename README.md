# ApiOSSDKDemo

## **Get started -**

  Follow this guide to get started with Ap Mobile SDK.

  The Ap Mobile SDK provides ad formats like Smart Interstitial and Smart Rewarded Ads.

  The following document shows how to integrate Ap Mobile SDK in your iOS App.

  You can use our demo apps as a reference project.

## **Before you begin -**

  iOS version 14.0 and higher.

  Xcode version 15.3 or higher.

Get the following IDs from AdPushup:

- **Ad Manager App Id:** For info.plist file.
- **Ap App Id**: Used in initialising Ap Mobile SDK.
- **Ap Placement Ids**: Each Ad Unit has a unique placement Id.

## **Configure your app -**

Update info.plist file.

- `GADApplicationIdentifier` key with a string value of your **Ad Manager** app ID(Provided by Adpushup) and of the form `ca-app-pub-################~##########`.
- `SKAdNetworkItems` key with `SKAdNetworkIdentifier` values.

   Example-info.plist - https://github.com/adpushup/ApiOSSDKDemo/blob/Docs/infoPlist.txt
    
## **Import SDK in the app.**

- Importing from Cocoapods.
    - Just add this command in your Podfile.
      
          pod ‘ApMobileSDK’
    - Then from the command line run:
    
          `pod install --repo-update`
    - If getting Sandbox issue while importing through cocoapods, Go to Build setting of app target and search for "user script sandboxing" if it is "Yes" change it to "No".
    

- Importing from swift package manager.
    - In Xcode, install the ApMobileSDK Swift Package by navigating to **File > Add Packages.**
    - In the prompt that appears, search for the ApMobileSDK Swift Package GitHub repository.
        
        [https://github.com/adpushup/ApiOSSDK](https://github.com/adpushup/ApiOSSDK.git)
        
- Importing through ApMobileSDK.xcframework file (in case if above methods are not working).
    - In the ApiOSSDK in the Sources folder there is a ApMobileSDK.xcframework file, Download it.
    - Drag and drop the ApMobileSDK.xcframework file in your project.

## **Initialise the Ap Mobile SDK**

Note : Replace “testId” with the App Id provided by Adpushup.

- Swift example - Add the initialise function in App delegate application function.
    
    ```swift
    import ApMobileSDK
    
    @main
    class AppDelegate: UIResponder, UIApplicationDelegate  {
        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            ApAppSDK.initialise(id: "testId") //testId will be provided by Adpushup
            // Override point for customisation after application launch.
            return true
        }
    }
    ```
    
- SwiftUI example - Call initialise in the @main class
    
    ```swift
    import SwiftUI
    import ApMobileSDK
    
    @main
    struct ExampleApp: App {
        var body: some Scene {
            WindowGroup {
                ContentView().onAppear {
                    ApAppSDK.initialise(id: "testId") //testId will be provided by Adpushup
                }
            }
        }
    }
    ```
    
- Objective C example - Add the initialise function in App delegate application function.
    
    ```objectivec
    #import "AppDelegate.h" 
    
    @implementation AppDelegate
    
    (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
        // Initialize ApMobileSDK here
    
        [ApAppSDK initialiseWithId:@"testId"];  //testId will be provided by Adpushup
        return YES;
    
    }
    ```
    

## Ad Formats
- [Interstitial Ads](InterstitialAdExample/README.md)
- [Rewarded Ads](RewardedAdExample/README.md)
