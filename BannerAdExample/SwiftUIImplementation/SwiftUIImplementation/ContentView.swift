//
//  ContentView.swift
//  SwiftUIImplementation
//
//  Created by Rishabh Tripathi on 11/06/25.
//

import SwiftUI
import ApMobileSDK
import GoogleMobileAds

struct ContentView: View {
    
    @State private var adView: UIView?
    var apBanner = ApBannerAd(apPlacementId: "testBannerAdUnit")
    let bannerListener = BannerListener()
    
    var body: some View {
        VStack {
            // Content
            Text("Banner Ad Demo")
                .padding()
            
            // Buttons
            VStack {
                Button("Load Ad") { loadAd() }
                Button("Show Ad") { showAd() }
            }
            Spacer()
            // Ad Container (fixed size)
            if let adView = adView {
                UIViewRepresentableWrapper(view: adView)
                    .frame(width: 360, height: 60)
            }
        }
        .onAppear {
            loadAd()
        }
    }
    private func loadAd() {
        apBanner.loadAd(viewController: UIApplication.shared.rootViewController, apBannerListener: bannerListener)
    }
    
    private func showAd() {
        adView = apBanner.getAdView()
    }
}

struct UIViewRepresentableWrapper: UIViewRepresentable {
    let view: UIView
    func makeUIView(context: Context) -> UIView { view }
    func updateUIView(_ uiView: UIView, context: Context) {}
}

// MARK: - Root ViewController Helper
extension UIApplication {
    var rootViewController: UIViewController {
        guard let windowScene = connectedScenes.first as? UIWindowScene,
              let rootVC = windowScene.windows.first?.rootViewController else {
            fatalError("No root VC")
        }
        return rootVC
    }
}

#Preview {
    ContentView()
}
