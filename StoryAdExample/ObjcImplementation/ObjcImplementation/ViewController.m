//
//  ViewController.m
//  ObjcImplementation
//
//  Created by Rishabh Tripathi on 13/06/25.
//

#import "ViewController.h"

@interface ViewController () <ApStoryDelegate>

@property (strong, nonatomic) ApStory *apStory;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.apStory = [[ApStory alloc] init];
}

-(IBAction)loadAd:(UIButton *)sender {
    if (self.apStory) {
        [self.apStory loadAdWithPlacementId:@"testNativeAdUnit" swipeUpGestureEnabled:false clickDismissEnabled:false delegate:self];
    }
}

-(IBAction)showAd:(UIButton *)sender {
    if (self.apStory) {
        UIView *adView = [self.apStory getAd];
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

- (void)onComplete:(BOOL)success {
    NSLog(@"Ad Complete");
}

@end
