//
//  StoryAdListener.swift
//  SwiftUIImplementation
//
//  Created by Rishabh Tripathi on 12/06/25.
//

import ApMobileSDK

class StoryAdListener : NSObject, ApStoryDelegate {
    func onComplete(_ success: Bool) {
        print("Ad completed")
    }
    func onError(_ code: Int, _ message: String) {
        print("Error: \(message)")
    }
    func onAdPresented() {
        print("Ad presented")
    }
    func onAdLoaded() {
        print("Ad Loaded")
    }
}
