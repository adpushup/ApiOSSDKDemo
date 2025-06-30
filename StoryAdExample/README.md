# Story Ads

- Ap Story Ads are a visually immersive ad format designed for integration between story-style or reel-like content. Ideal for apps with swipeable, full-screen media experiences, Ap Story Ads appear seamlessly between user-generated content and support rich media creatives. These ads can be skipped or interacted with, ensuring a non-intrusive yet engaging monetization experience.
    
    
Note: Replace “testPlacement” with the Ap Placement Id provided by Adpushup.
    
**Implementation**

- Swift example -
    
    ```swift
    let apStory = ApStory()

    func loadStoryAd() {
        apStory.loadAd(placementId: "testPlacement", swipeUpGestureEnabled: true, clickDismissEnabled: true, delegate: self)
    } //testPlacement will be provided by Adpushup

    func showStoryAd() {
        let adView = apStory.getAd()
        self.view.addSubview(adView)
        adView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            adView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            adView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            adView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            adView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    ```
    
- SwiftUI example -
    
    ```swift
    var storyAdListener = StoryAdListener()
    var apStory = ApStory()

    apStory.loadAd(placementId: "testNativeAdUnit", swipeUpGestureEnabled: Bool, clickDismissEnabled: Bool, delegate: storyAdListener) // testPlacement will be provided by Adpushup

    let adView = apStory.getAd()
    ```
        
        
- Objective C example -
    
    ```objectivec
    @property (strong, nonatomic) ApStory *apStory;       
    -(IBAction)loadAd:(UIButton *)sender {
        if (self.apStory) {
            [apStory loadAdWithPlacementId:@"testPlacement" swipeUpGestureEnabled:false clickDismissEnabled:false delegate:self];
        }
    } //testPlacement will be provided by Adpushup        
    -(IBAction)showAd:(UIButton *)sender {
        if (self.apStory) {
            UIView *adView = [apStory getAd];
            [self.view addSubview:adView];
            adView.translatesAutoresizingMaskIntoConstraints = NO;        
            [NSLayoutConstraint activateConstraints:@[
                [adView.leadingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leadingAnchor],
                [adView.trailingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.trailingAnchor],
                [adView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor],
                [adView.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor]
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
func onWarning(_ code: Int, _ message: String)
func onComplete(_ success: Bool)
func onError(code: Int, message: String)
func onAdDismissed()
```