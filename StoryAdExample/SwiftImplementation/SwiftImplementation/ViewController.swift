//
//  ViewController.swift
//  SwiftImplementation
//
//  Created by Rishabh Tripathi on 10/06/25.
//

import UIKit
import ApMobileSDK

class ViewController: UIViewController, ApStoryDelegate {
    let apStory = ApStory()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loadAd(_ sender: UIButton) {
        apStory.loadAd(placementId: "testNativeAdUnit", swipeUpGestureEnabled: false, clickDismissEnabled: false, delegate: self)
    }

    @IBAction func showAd(_ sender: UIButton) {
        let adView = apStory.getAd()
        self.view.addSubview(adView)
        adView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            adView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            adView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            adView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            adView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)])
    }

    func onComplete(_ success: Bool) {
        print("Debug Ad Complete")
    }
    
    func onAdLoaded() {
        print("Ad Loaded")
    }
    
    func onError(_ code: Int, _ message: String) {
        print("Error: \(code) \(message)")
    }
}

