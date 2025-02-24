//
//  InterstitialAdExampleApp.swift
//  InterstitialAdExample
//
//  Created by Rishabh Tripathi on 13/11/24.
//

import SwiftUI
import ApMobileSDK

@main
struct InterstitialAdExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().onAppear {
                ApAppSDK.initialise(id: "testnews")
            }
        }
    }
}
