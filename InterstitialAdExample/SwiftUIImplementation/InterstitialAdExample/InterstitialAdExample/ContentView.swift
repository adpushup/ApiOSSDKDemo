//
//  ContentView.swift
//  InterstitialAdExample
//
//  Created by Rishabh Tripathi on 13/11/24.
//

import SwiftUI
import ApMobileSDK

struct ContentView: View {
    private let listener = InterstitialAdListener()
    var body: some View {
        VStack {
            Button(action: {
                if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                   let rootViewController = windowScene.windows.first(where: { $0.isKeyWindow })?.rootViewController {
                    ApAppSDK.showInterstitialAd(viewController: rootViewController, apPlacementID: "testPlacement", apInterstitialListener: listener)
                }
            }) {
                Text("Interstitial Ad Demo")
                    .foregroundColor(.white)
                    .frame(width: 200, height: 40)
                    .background(Color.green)
                    .cornerRadius(8)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
