//
//  ViewController.m
//  ObjcImplementation
//
//  Created by Rishabh Tripathi on 11/06/25.
//

#import "ViewController.h"

@interface ViewController () <ApRewardedInterstitialListener>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction)showAd:(UIButton *)sender {
    [ApAppSDK showRewardedInterstitialAdWithViewController:self apPlacementID:@"testPlacement" apRewardedInterstitialListener:self];
}


- (void)onComplete { 
    NSLog(@"Ad Complete");
}

@end
