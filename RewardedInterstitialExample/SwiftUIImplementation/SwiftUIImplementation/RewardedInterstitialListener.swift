//
//  ApRewardedInterstitialListener.swift
//  SwiftUIImplementation
//
//  Created by Rishabh Tripathi on 11/06/25.
//

import ApMobileSDK

class RewardedInterstitialListener: NSObject, ApRewardedInterstitialListener {
    func onComplete() {
        print("Ad Complete")
    }
}
