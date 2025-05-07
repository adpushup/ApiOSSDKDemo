//
//  ViewController.m
//  InterstitialAdExample
//
//  Created by Rishabh Tripathi on 13/11/24.
//

#import "ViewController.h"
#import "ApMobileSDK/ApMobileSDK.h"

@interface ViewController () <ApInterstitialListener>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)showAdBtnTapped:(UIButton *)sender {
    [ApAppSDK showInterstitialAdWithViewController:self apPlacementID:@"testPlacement" apInterstitialListener:self];
}
- (void)onComplete {
    NSLog(@"Ad Complete");
}
- (void)onAdDismissed {
    NSLog(@"Ad Dismissed");
}
@end
