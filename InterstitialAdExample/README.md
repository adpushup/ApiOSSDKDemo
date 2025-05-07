# Interstitial Ads

- Interstitial Ad - Interstitial ads are full-screen ads that cover the interface of their host app. They're typically displayed at natural transition points in the flow of an app, such as between activities or during the pause between levels in a game. When an app shows an interstitial ad, the user has the choice to either tap on the ad and continue to its destination or close it and return to the app.
    
    
    Note: Replace “testPlacement” with the Ap Placement Id provided by Adpushup.
    
    **Implementation**
    
    - Swift example -
        
        ```swift
        ApMobileSDK.showInterstitialAd(viewController: self, apPlacementID: "testPlacement", apInterstitialListener: self) //testPlacement will be provided by Adpushup
        ```
        
    - SwiftUI example -
        
        ```swift
        .onAppear {
                if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
               let rootViewController = windowScene.windows.first(where: { $0.isKeyWindow })?.rootViewController {
               ApAppSDK.showInterstitialAd(viewController: rootViewController, apPlacementID: "testPlacement", apInterstitialListener: self)
            }
        }//testPlacement will be provided by Adpushup
        ```
        
        
    - Objective C example -
        
        ```objectivec
        [ApAppSDK showInterstitialAdWithViewController:self apPlacementID:@"testPlacement" apInterstitialListener:self]; //testPlacement will be provided by Adpushup
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
