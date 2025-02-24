//
//  RewardedAdExampleApp.swift
//  RewardedAdExample
//
//  Created by Rishabh Tripathi on 19/11/24.
//

import SwiftUI
import ApMobileSDK

@main
struct RewardedAdExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().onAppear {
                ApAppSDK.initialise(id: "testnews")
            }
        }
    }
}
