//
//  SwiftUIImplementationApp.swift
//  SwiftUIImplementation
//
//  Created by Rishabh Tripathi on 11/06/25.
//

import SwiftUI
import ApMobileSDK

@main
struct SwiftUIImplementationApp: App {
    
    @Environment(\.scenePhase) private var scenePhase
    let appOpen = ApAppOpenAds()
    let appOpenListener = AppOpenListener()
    
    var body: some Scene {
        WindowGroup {
            ContentView().onAppear {
                ApAppSDK.initialise(id: "testnews")
            }.onChange(of: scenePhase) { newPhase in
                switch newPhase {
                case .active:
                    appOpen.showAd(apPlacementID: "appOpen", apAppOpenListener: appOpenListener)
                case .inactive:
                    print("Scene is inactive")
                case .background:
                    print("Scene is in background")
                @unknown default:
                    print("Unknown scene phase")
                }
            }
        }
    }
}
