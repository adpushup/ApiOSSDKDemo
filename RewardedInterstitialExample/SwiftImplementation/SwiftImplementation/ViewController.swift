//
//  ViewController.swift
//  SwiftImplementation
//
//  Created by Rishabh Tripathi on 09/06/25.
//

import UIKit
import ApMobileSDK

class ViewController: UIViewController, ApRewardedInterstitialListener {
    
    func onComplete() {
        print("Ad Complete")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAd(_ sender: UIButton) {
        ApAppSDK.showRewardedInterstitialAd(viewController: self, apPlacementID: "testPlacement", apRewardedInterstitialListener: self)
    }
    
}

