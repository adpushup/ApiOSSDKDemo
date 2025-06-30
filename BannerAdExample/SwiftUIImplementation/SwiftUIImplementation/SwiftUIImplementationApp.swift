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
    var body: some Scene {
        WindowGroup {
            ContentView().onAppear {
                ApAppSDK.initialise(id: "testnews")
            }
        }
    }
}
