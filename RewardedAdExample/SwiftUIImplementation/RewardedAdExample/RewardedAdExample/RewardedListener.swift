//
//  RewardedListener.swift
//  RewardedAdExample
//
//  Created by Rishabh Tripathi on 19/11/24.
//

import UIKit
import ApMobileSDK

class RewardedListener: NSObject, ApRewardedListener {
    func onComplete() {
        print("Completed")
    }
}
