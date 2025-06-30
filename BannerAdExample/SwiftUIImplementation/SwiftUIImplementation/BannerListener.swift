//
//  BannerListener.swift
//  SwiftUIImplementation
//
//  Created by Rishabh Tripathi on 22/06/25.
//
import ApMobileSDK

class BannerListener: NSObject, ApBannerListener {
    func onAdPresented() {
        print("Ad presented")
    }
    func onAdLoaded() {
        print("Ad loaded")
    }
}
