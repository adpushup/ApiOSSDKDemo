# Rewarded Ads

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
