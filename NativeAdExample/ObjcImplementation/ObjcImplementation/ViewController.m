//
//  ViewController.m
//  ObjcImplementation
//
//  Created by Rishabh Tripathi on 11/06/25.
//

#import "ViewController.h"

@interface ViewController () <ApNativeListener>

@property (strong, nonatomic) GADNativeAd *nativeAd;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)showAd:(UIButton *)sender {
    ApNativeAd *apNativeAd = [[ApNativeAd alloc]init];
    [apNativeAd loadAdWithApPlacementId:@"testNativeAdUnit" viewController:self apNativeListener:self];
}

- (void)onNativeWithNativeAd:(GADNativeAd * _Nonnull)nativeAd { 
    self.nativeAd = nativeAd;
}

@end
