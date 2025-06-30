//
//  NativeAdListener.swift
//  SwiftUIImplementation
//
//  Created by Rishabh Tripathi on 11/06/25.
//

import ApMobileSDK
import GoogleMobileAds

class NativeAdListener: NSObject, ApNativeListener {
    
    var nativeAd = GADNativeAd()
    
    func onNative(nativeAd: GADNativeAd) {
        self.nativeAd = nativeAd
    }
    
}
