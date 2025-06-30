# App Open Ads

App open ads are a special ad format intended for publishers wishing to monetize their app load screens. App open ads can be closed at any time, and are designed to be shown when your users bring your app to the foreground.


Note: Replace “testPlacement” with the Ap Placement Id provided by Adpushup.
    
**Implementation** - Implement App Open Ads in the scene delegate of your project or where you handle the case of activity state of the App. Call the show Ad function in the appWillEnterForeground or when the App comes in **active** state. 
    
- Swift example -
        
    ```swift
    apAppOpen.showAd(apPlacementID: "PLACEMENT_ID", apAppOpenListener: self) // PLACEMENT_ID will be provided by Adpushup
    ```
        
- SwiftUI example -
        
    ```swift
    let appOpen = ApAppOpenAds()
    appOpen.showAd(apPlacementID: "PLACEMENT_ID", apAppOpenListener: appOpenListener) // PLACEMENT_ID will be provided by Adpushup
    ```
        
        
- Objective C example -
        
    ```objectivec
    ApAppOpenAds *apAppOpenAds = [[ApAppOpenAds alloc] init];
    [apAppOpenAds showAdWithApPlacementID:@"PLACEMENT_ID" apAppOpenListener:self];  // PLACEMENT_ID will be provided by Adpushup
    ```
        

**Supported Callbacks**
```swift
func onAdClicked()
func onAdImpression()
func onAdPresented()
func onAdNotLoadedYet()
func onAdFailedToLoad()
func onAdFailToPresent(withError error: any Error)
func onComplete()
func onError(code: Int, message: String)
func onAdDismissed()
```