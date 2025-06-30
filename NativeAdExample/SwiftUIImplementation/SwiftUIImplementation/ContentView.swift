//
//  ContentView.swift
//  SwiftUIImplementation
//
//  Created by Rishabh Tripathi on 11/06/25.
//

import SwiftUI
import ApMobileSDK

struct ContentView: View {
    let apNative = ApNativeAd()
    let nativeAdLitener = NativeAdListener()
    
    var body: some View {
        VStack {
            Button(action: {
                if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                   let rootViewController = windowScene.windows.first(where: { $0.isKeyWindow })?.rootViewController {
                    apNative.loadAd(apPlacementId: "testNativeAdUnit", viewController: rootViewController, apNativeListener: nativeAdLitener)
                }
            }) {
                Text("Load Native Ad")
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
