# Native Ads

Customizable ads that match the look and feel of your app. You decide how and where they're placed, so the layout is more consistent with your app's design.
    
    
Note: Replace “testPlacement” with the Ap Placement Id provided by Adpushup.
    
**Implementation**
    
- Swift example -
        
    ```swift
    let nativeAd = ApNativeAd()

    func loadNativeAd() {
        nativeAd.loadAd(apPlacementId: "testPlacement", viewController: self, apNativeListener: self) // testPlacement will be provided by Adpushup
    }
    ```
        
- SwiftUI example -
        
    ```swift
    let apNative = ApNativeAd()
    let nativeAdLitener = NativeAdListener()

    if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
        let rootViewController = windowScene.windows.first(where: { $0.isKeyWindow })?.rootViewController {
            apNative.loadAd(apPlacementId: "testPlacement", viewController: rootViewController, apNativeListener: nativeAdLitener)
        } // testPlacement will be provided by Adpushup
    ```
        
        
- Objective C example -
        
    ```objectiveC
    ApNativeAd *apNativeAd = [[ApNativeAd alloc]init];
        
    [apNativeAd loadAdWithApPlacementId:@"testPlacement" viewController:self apNativeListener:self]; //testPlacement will be provided by Adpushup
    ```
        

**Supported Callbacks**

```swift
func onNative(nativeAd: GADNativeAd)
func onAdClicked()
func onAdImpression()
func onAdPresented()
func onAdLoaded()
func onAdDismissed()
func onError(code: Int, message: String)
func onWarning(_ code: Int, _ message: String)
```
