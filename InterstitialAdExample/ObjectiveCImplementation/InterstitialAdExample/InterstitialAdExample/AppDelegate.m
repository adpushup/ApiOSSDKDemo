//
//  AppDelegate.m
//  InterstitialAdExample
//
//  Created by Rishabh Tripathi on 13/11/24.
//

#import "AppDelegate.h"
#import <ApMobileSDK/ApMobileSDK.h>

@interface AppDelegate ()

@end
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [ApAppSDK initialiseWithId:@"testnews"];
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end


//zip -r "./build/ApMobileSDK.xcframework.zip" "./build/ApMobileSDK.xcframework"
//
//xcodebuild -create-xcframework \
//    -framework "./build/iOS.xcarchive/Products/Library/Frameworks/ApMobileSDK.framework" \
//    -framework "./build/iOSSimulator.xcarchive/Products/Library/Frameworks/ApMobileSDK.framework" \
//    -output "./build/ApMobileSDK.xcframework"
//
//xcodebuild archive \
//    -scheme "ApMobileSDK" \
//    -destination "generic/platform=iOS Simulator" \
//    -archivePath "./build/iOSSimulator" \
//    -sdk iphonesimulator \
//    SKIP_INSTALL=NO \
//    BUILD_LIBRARY_FOR_DISTRIBUTION=YES
//
//xcodebuild archive \
//    -scheme "ApMobileSDK" \
//    -destination "generic/platform=iOS" \
//    -archivePath "./build/iOS" \
//    -sdk iphoneos \
//    SKIP_INSTALL=NO \
//    BUILD_LIBRARY_FOR_DISTRIBUTION=YES
//
//mkdir ./build
//rm -rf ./build
