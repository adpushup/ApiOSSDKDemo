//
//  ViewController.swift
//  SwiftImplementation
//
//  Created by Rishabh Tripathi on 10/06/25.
//

import UIKit
import ApMobileSDK
import GoogleMobileAds

class ViewController: UIViewController, ApNativeListener {
    
    let nativeAd = ApNativeAd()
    var nativeAdView = GADNativeAd()

    func onNative(nativeAd: GADNativeAd) {
        self.nativeAdView = nativeAd
    }
    
    func onError(_ code: Int, _ message: String) {
        print("Error: \(message)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loadAd(_ sender: UIButton) {
        nativeAd.loadAd(apPlacementId: "testNativeAdUnit", viewController: self, apNativeListener: self)
    }

    @IBAction func showAd(_ sender: UIButton) {
        
    }
}

