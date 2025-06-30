//
//  ViewController.swift
//  SwiftImplementation
//
//  Created by Rishabh Tripathi on 10/06/25.
//

import UIKit
import ApMobileSDK
import GoogleMobileAds

class ViewController: UIViewController, ApBannerListener {
    
    @IBOutlet weak var bannerAdView: GAMBannerView!
    var apBanner = ApBannerAd(apPlacementId: "testBannerAdUnit")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loadAd(_ sender: UIButton) {
        apBanner.loadAd(viewController: self, apBannerListener: self)
    }
    
    @IBAction func showAd(_ sender: UIButton) {
        let adView = apBanner.getAdView()
        bannerAdView.addSubview(adView)
        NSLayoutConstraint.activate([
            adView.leadingAnchor.constraint(equalTo: bannerAdView.safeAreaLayoutGuide.leadingAnchor),
            adView.trailingAnchor.constraint(equalTo: bannerAdView.safeAreaLayoutGuide.trailingAnchor),
            adView.topAnchor.constraint(equalTo: bannerAdView.safeAreaLayoutGuide.topAnchor),
            adView.bottomAnchor.constraint(equalTo: bannerAdView.safeAreaLayoutGuide.bottomAnchor)
        ])
    }

}

