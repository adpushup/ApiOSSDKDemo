# Banner Ads

Banner ads occupy a spot within an app's layout, either at the top or bottom of the device screen. They stay on screen while users are interacting with the app, and can refresh automatically after a certain period of time. If you're new to mobile advertising, they're a great place to start.
    
    
Note: Replace “testPlacement” with the Ap Placement Id provided by Adpushup.

**Implementation**

- Swift example -
    
    ```swift
    @IBOutlet weak var bannerView = GAMBannerView!
    let apBanner = ApBannerAd(apPlacementId: "testPlacement") //testPlacement will be provided by Adpushup
    
    func loadAd() {
        apBanner.loadAd(viewController: self, apBannerListener: self)
    }
    
    func showAd() {
        let adView = apBanner.getAdView()
        bannerAdView.addSubview(adView)
        
        NSLayoutConstraint.activate([
            adView.leadingAnchor.constraint(equalTo: bannerAdView.safeAreaLayoutGuide.leadingAnchor),
            adView.trailingAnchor.constraint(equalTo: bannerAdView. safeAreaLayoutGuide.trailingAnchor),
            adView.topAnchor.constraint(equalTo: bannerAdView.safeAreaLayoutGuide.topAnchor),
            adView.bottomAnchor.constraint(equalTo: bannerAdView.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    ```
    
- SwiftUI example -
    
    ```swift
    @State private var adView: UIView?
    var apBanner = ApBannerAd(apPlacementId: "testBannerAdUnit") //testPlacement will be provided by Adpushup
    let bannerListener = BannerListener()

     private func loadAd() {
        apBanner.loadAd(viewController: UIApplication.shared.rootViewController, apBannerListener: bannerListener)
    }
    
    private func showAd() {
        adView = apBanner.getAdView()
    }
    ```
    
    
- Objective C example -
    
    ```objectivec
    @property (weak, nonatomic) IBOutlet GAMBannerView *bannerView;
    @property (strong, nonatomic) ApBannerAd *apBanner;
    
    -(IBAction)loadAd:(UIButton *)sender {
        if (self.apBanner) {
            [self.apBanner loadAdWithViewController:self apBannerListener:self];
        }
    }

    -(IBAction)showAd:(UIButton *)sender {
        if (self.apBanner) {
            UIView *adView = [self.apBanner getAdView];
            [_bannerView addSubview:adView];
            adView.translatesAutoresizingMaskIntoConstraints = NO;

                [NSLayoutConstraint activateConstraints:@[
                    [adView.leadingAnchor constraintEqualToAnchor:_bannerView.safeAreaLayoutGuide.leadingAnchor],
                    [adView.trailingAnchor constraintEqualToAnchor:_bannerView.safeAreaLayoutGuide.trailingAnchor],
                    [adView.topAnchor constraintEqualToAnchor:_bannerView.safeAreaLayoutGuide.topAnchor],
                    [adView.bottomAnchor constraintEqualToAnchor:_bannerView.safeAreaLayoutGuide.bottomAnchor]
                ]];
            }
        }
    ```
        

**Supported Callbacks**
```swift
func onAdClicked()
func onAdImpression()
func onAdPresented()
func onAdLoaded()
func onWarning(code: Int, message: String)
func onError(code: Int, message: String)
func onAdDismissed()
```