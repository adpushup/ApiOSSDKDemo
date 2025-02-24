# ApiOSSDK
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

- A `GADApplicationIdentifier` key with a string value of your **Ad Manager** app ID(Provided by Adpushup) and of the form `ca-app-pub-################~##########`.
- A `SKAdNetworkItems` key with `SKAdNetworkIdentifier` values.
    
    ```jsx
    <key>GADApplicationIdentifier</key>
    <string>ca-app-pub-################~##########</string>
    <key>SKAdNetworkItems</key>
    <array>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>cstr6suwn9.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>4fzdc2evr5.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>2fnua5tdw4.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>ydx93a7ass.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>p78axxw29g.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>v72qych5uu.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>ludvb6z3bs.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>cp8zw746q7.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>3sh42y64q3.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>c6k4g5qg8m.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>s39g8k73mm.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>3qy4746246.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>hs6bdukanm.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>mlmmfzh3r3.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>v4nxqhlyqp.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>wzmmz9fp6w.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>su67r6k2v3.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>yclnxrl5pm.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>7ug5zh24hu.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>gta9lk7p23.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>vutu7akeur.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>y5ghdn5j9k.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>v9wttpbfk9.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>n38lu8286q.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>47vhws6wlr.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>kbd757ywx3.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>9t245vhmpl.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>a2p9lx4jpn.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>22mmun2rn5.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>4468km3ulz.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>2u9pt9hc89.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>8s468mfl3y.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>ppxm28t8ap.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>uw77j35x4d.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>pwa73g5rt2.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>578prtvx9j.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>4dzt52r2t5.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>tl55sbb4fm.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>e5fvkxwrpn.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>8c4e2ghe7u.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>3rd42ekr43.skadnetwork</string>
      </dict>
      <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>3qcr597p9d.skadnetwork</string>
      </dict>
    </array>
    ```
    

Import SDK in the app.

- Importing from Cocoapods.
    - Just add this command in your Podfile.
    pod ‘ApMobileSDK’
    - Then from the command line run:
    
          `pod install --repo-update`
    

- Importing from swift package manager.
    - In Xcode, install the ApMobileSDK Swift Package by navigating to **File > Add Packages.**
    - In the prompt that appears, search for the ApMobileSDK Swift Package GitHub repository.
        
        [https://github.com/adpushup/ApiOSSDK](https://github.com/adpushup/ApiOSSDK.git)
        
- Importing through ApMobileSDK.xcframework file (in case if above methods are not working).
    - In the ApiOSSDK in the Sources folder there is a ApMobileSDK.xcframework file, Download it.
    - Drag and drop the ApMobileSDK.xcframework file in your project.

## **Initialise the Ap Mobile SDK**

Note : Replace “testId” with the App Id provided by Adpushup.

- Swift example - Add the initialise function in app delegate application function.
    
    ```swift
    import ApMobileSDK
    
    @main
    class AppDelegate: UIResponder, UIApplicationDelegate  {
        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            ApAppSDK.initialise(id: "testId")
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
                    ApAppSDK.initialise(id: "testId")
                }
            }
        }
    }
    ```
    
- Objective C example -
    
    ```objectivec
    #import "AppDelegate.h"
    #import <ApMobileSDK/ApMobileSDK.h> 
    
    @implementation AppDelegate
    
    (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
        // Initialize ApMobileSDK here
    
        [ApAppSDK initialiseWithId:@"testId"];
        return YES;
    
    }
    ```
    

## Ad Formats

- Interstitial Ad - Interstitial ads are full-screen ads that cover the interface of their host app. They're typically displayed at natural transition points in the flow of an app, such as between activities or during the pause between levels in a game. When an app shows an interstitial ad, the user has the choice to either tap on the ad and continue to its destination or close it and return to the app.
    
    
    Note: Replace “testPlacement” with the Ap Placement Id provided by Adpushup.
    
    **Implementation**
    
    - Swift example -
        
        ```swift
        ApMobileSDK.showInterstitialAd(viewController: **self**, apPlacementID: "testPlacement", apInterstitialListener: **self**)
        ```
        
    - SwiftUI example -
        
        ```swift
        .onAppear {
                if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
               let rootViewController = windowScene.windows.first(where: { $0.isKeyWindow })?.rootViewController {
               ApAppSDK.showInterstitialAd(viewController: rootViewController, apPlacementID: "testPlacement", apInterstitialListener: self)
            }
        }
        ```
        
    - Objective C example -
        
        ```objectivec
        [ApAppSDK showInterstitialAdWithViewController:self apPlacementID:@"testPlacement" apInterstitialListener:self];
        ```
        

**Supported Callbacks**

**func** onAdClicked()

**func** onAdImpression()

**func** adPresented()

**func** onAdNotLoadedYet()

**func** onAdFailToPresent(withError error: **any** Error)

**func** onComplete()

**func** onError(code: Int, message: String)

**func** onAdDismissed()

- Rewarded Ad - Ads that reward users for watching short videos and interacting with playable ads and surveys. You should ask the user to view a rewarded ad for a reward. If you want to show rewarded ads between the normal flow of the screens, Please use Rewarded Interstitial Ads instead.
    
    
    **Implementation**
    
    - Check If Rewarded Ad is ready.
        - Swift example -
            
            ```swift
            if ApAppSDK.isRewardedAdReady(apPlacementID: “yourPlacementID”) {
                    //Code to show rewarded ad.
            }
            ```
            
        - Objective C -
            
            ```objectivec
             if ([ApAppSDK isRewardedAdReadyWithApPlacementID:@"yourPlacementID"]) {
                    //Code to show rewarded ad.
            }
            ```
            
        - SwiftUI -
            
            ```swift
            if ApAppSDK.isRewardedAdReady(apPlacementID: "yourPlacementID") {
                    //Code to show rewarded ad.
            }
            ```
            
        
    - Show Rewarded Ad.
        - Swift example -
            
            ```swift
            ApAppSDK.showRewardedAd(viewController: **self**, apPlacementID: "testPlacement", apRewardedListener: **self**)
            ```
            
        - Objective C -
            
            ```objectivec
            [ApAppSDK showRewardedAdWithViewController:self apPlacementID:@"testPlacement" apRewardedlListener:self];
            ```
            
        - SwiftUI -
            
            
            ```swift
            .onAppear {
                if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                  let rootViewController = windowScene.windows.first(where: { $0.isKeyWindow })?.rootViewController {
                        ApAppSDK.showRewardedAd(viewController: rootViewController, apPlacementID: "testPlacement", apRewardedListener: self)
                    }
            }
            ```
            
    
    **Supported Callbacks**
    
    **func** onAdClicked()
    
    **func** onAdImpression()
    
    **func** onAdShowed()
    
    **func** onAdDismissed()
    
    **func** onAdNotLoadedYet()
    
    **func** onUserEarnedReward(type: String, amount: Int)
    
    **func** onComplete()
    
    **func** onError(code: Int, message: String)
    
    **func** onWarning(code: Int, message: String)
