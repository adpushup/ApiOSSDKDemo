//
//  ViewController.m
//  ObjcImplementation
//
//  Created by Rishabh Tripathi on 12/06/25.
//

#import "ViewController.h"

@interface ViewController () <ApBannerListener>

@property (weak, nonatomic) IBOutlet GAMBannerView *bannerView;
@property (strong, nonatomic) ApBannerAd *apBanner;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.apBanner = [[ApBannerAd alloc] initWithApPlacementId:@"testBannerAdUnit"];
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

-(IBAction)loadAd:(UIButton *)sender {
    if (self.apBanner) {
        [self.apBanner loadAdWithViewController:self apBannerListener:self];
    }
}


@end
