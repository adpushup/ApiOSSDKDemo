//
//  ViewController.swift
//  InterstitialAdExample
//
//  Created by Rishabh Tripathi on 04/11/24.
//

import UIKit
import ApMobileSDK

class ViewController: UIViewController, ApInterstitialListener {
    
    func onComplete() {
        print("Interstitial Ad Completed")
    }
    func onAdDismissed() {
        print("Interstitial Ad Dismissed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func showAdTapped(_ sender: UIButton) {
        ApAppSDK.showInterstitialAd(viewController: self, apPlacementID: "testPlacement", apInterstitialListener: self)
    }
}

