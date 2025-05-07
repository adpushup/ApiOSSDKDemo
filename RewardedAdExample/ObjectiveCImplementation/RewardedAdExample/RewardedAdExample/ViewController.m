//
//  ViewController.m
//  RewardedAdExample
//
//  Created by Rishabh Tripathi on 19/11/24.
//

#import "ViewController.h"
#import "ApMobileSDK/ApMobileSDK.h"

@interface ViewController () <ApRewardedListener>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)showAdBtn:(UIButton *)sender {
    [ApAppSDK showRewardedAdWithViewController:self apPlacementID:@"testPlacement" apRewardedListener:self];
}

- (void)onComplete {
    NSLog(@"Ad Complete");
}

@end
