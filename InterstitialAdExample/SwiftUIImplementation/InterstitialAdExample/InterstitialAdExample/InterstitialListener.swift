//
//  InterstitialListener.swift
//  InterstitialAdExample
//
//  Created by Rishabh Tripathi on 19/11/24.
//

import Foundation
import UIKit
import ApMobileSDK

class InterstitialAdListener: NSObject, ApInterstitialListener {
    func onAdClicked() {
        print("Ad clicked")
    }
    
    func onAdImpression() {
        print("Ad impression recorded")
    }
    
    func onComplete() {
        print("Ad completed")
    }
    
    func onAdDismissed() {
        print("Ad dismissed")
    }
}
