//
//  ViewController.swift
//  RewardedAdExample
//
//  Created by Rishabh Tripathi on 04/11/24.
//

import UIKit
import ApMobileSDK

class ViewController: UIViewController, ApRewardedListener {
    func onComplete() {
        print("On Complete")
    }
    
    func onAdDismissed() {
        print("On Ad Dismissed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showAdTapped(_ sender: UIButton) {
        ApAppSDK.showRewardedAd(viewController: self, apPlacementID: "testPlacement", apRewardedListener: self)
    }
}

