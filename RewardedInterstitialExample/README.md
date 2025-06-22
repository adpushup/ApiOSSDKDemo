# Rewarded Interstitial Ads

Rewarded interstitial is a type of incentivized ad format that allows you to offer rewards for ads that appear automatically during natural app transitions. Unlike rewarded ads, users aren't required to opt-in to view a rewarded interstitial.
    

Note: Replace “testPlacement” with the Ap Placement Id provided by Adpushup.

**Implementation**

- Swift example -
    
    ```swift
    ApAppSDK.showRewardedInterstitialAd(viewController: self, apPlacementID: "testPlacement", apRewardedInterstitialListener: self) //testPlacement will be provided by Adpushup
    ```
    
- SwiftUI example -
    
    ```swift
    if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,let rootViewController = windowScene.windows.first(where: { $0.isKeyWindow })?.rootViewController {
            ApAppSDK.showRewardedInterstitialAd(viewController: rootViewController, apPlacementID: "testPlacement", apRewardedInterstitialListener: RewardedInterListener)
    }//testPlacement will be provided by Adpushup
    ```
    
    
- Objective C example -
    
    ```objectivec
    [ApAppSDK showRewardedInterstitialAdWithViewController:self apPlacementID:@"testPlacement" apRewardedInterstitialListener:self]; //testPlacement will be provided by Adpushup
    ```
    

**Supported Callbacks**

```swift
func onAdClicked()
func onAdImpression()
func onAdShowed()
func onAdNotLoadedYet()
func onWarning(code: Int, message: String)
func onUserEarnedReward(type: String, amount: Int)
func onComplete()
func onError(code: Int, message: String)
func onAdDismissed()
```
