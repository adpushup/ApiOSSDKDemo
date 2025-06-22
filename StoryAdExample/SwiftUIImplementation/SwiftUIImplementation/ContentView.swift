//
//  ContentView.swift
//  SwiftUIImplementation
//
//  Created by Rishabh Tripathi on 11/06/25.
//

import SwiftUI
import ApMobileSDK

struct ContentView: View {
    
    @State private var isPresentingAd = false
    @State private var showAd = false
    @State private var isAdLoaded = false
    @State private var adRefreshTrigger = false  // Add this to force view refresh
    @State private var adViewController: UIViewController?
    var storyAdListener = StoryAdListener()
    var apStory = ApStory()
    
    var body: some View {
        VStack {
            Button(action: {
                print("Load Ad button pressed")
                apStory.loadAd(placementId: "testNativeAdUnit", swipeUpGestureEnabled: false, clickDismissEnabled: false, delegate: storyAdListener)
                
                // Check periodically if ad is loaded
                checkAdLoadedStatus()
            }) {
                Text("Load Story Ad")
                    .foregroundColor(.white)
                    .frame(width: 200, height: 40)
                    .background(Color.green)
                    .cornerRadius(8)
            }
            
            Button(action: {
                if isAdLoaded {
                    print("Show Ad button pressed - Ad is loaded")
                    showAd.toggle()
                    adRefreshTrigger.toggle() // Force refresh
                } else {
                    print("Show Ad button pressed - Ad not loaded yet")
                    // Try to check if ad is actually loaded
                    if apStory.getAd() != nil {
                        print("Ad is actually loaded, updating state")
                        isAdLoaded = true
                        showAd = true
                        adRefreshTrigger.toggle()
                    }
                }
            }) {
                Text(showAd ? "Hide Story Ad" : "Show Story Ad")
                    .foregroundColor(.white)
                    .frame(width: 200, height: 40)
                    .background(isAdLoaded ? Color.green : Color.gray)
                    .cornerRadius(8)
            }
            .disabled(!isAdLoaded)
            

        }
        .padding()
        .overlay(
            // Full screen overlay that appears over the buttons
            showAd ?
            ZStack {
                // Black background that covers everything
                Color.black
                    .ignoresSafeArea(.all)
                
                // Ad view with refresh trigger
                AdViewRepresentable(apStory: apStory)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .id(adRefreshTrigger) // This forces SwiftUI to recreate the view
                
                // Close button in top-right corner
                VStack {
                    HStack {
                        Spacer()
                        Button(action: {
                            showAd = false
                        }) {
                            Image(systemName: "xmark.circle.fill")
                                .font(.title)
                                .foregroundColor(.white)
                                .background(Color.black.opacity(0.6))
                                .clipShape(Circle())
                        }
                        .padding()
                    }
                    Spacer()
                }
            } : nil
        )
    }
    
    // Function to check if ad is loaded
    private func checkAdLoadedStatus() {
        // Check immediately
        if apStory.getAd() != nil {
            print("Ad loaded immediately")
            isAdLoaded = true
            return
        }
        
        // Check after delays
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            if apStory.getAd() != nil {
                print("Ad loaded after 1 second")
                isAdLoaded = true
            } else {
                // Check again after 2 more seconds
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    if apStory.getAd() != nil {
                        print("Ad loaded after 3 seconds")
                        isAdLoaded = true
                    } else {
                        print("Ad still not loaded after 3 seconds")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

struct AdViewRepresentable: UIViewRepresentable {
    let apStory: ApStory
    @State private var hasCreatedView = false
    
    func makeUIView(context: Context) -> UIView {
        print("makeUIView called - hasCreatedView: \(hasCreatedView)")
        
        guard let adView = apStory.getAd() else {
            print("Ad not loaded yet in makeUIView")
            // Return a placeholder view with some indication
            let placeholder = UILabel()
            placeholder.text = "Loading ad..."
            placeholder.textAlignment = .center
            placeholder.textColor = .white
            placeholder.backgroundColor = .darkGray
            placeholder.layer.cornerRadius = 8
            return placeholder
        }
        
        print("Ad view created successfully in makeUIView")
        hasCreatedView = true
        return adView
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        print("updateUIView called")
        
        // If we're showing a placeholder and ad is now available, we need to replace it
        if uiView is UILabel, let adView = apStory.getAd() {
            print("Ad is now available, but we need to trigger a view refresh")
            // SwiftUI limitation: we can't replace the view here
            // The view needs to be recreated by changing some state
        }
        
        // Check if ad is still available
        if !(uiView is UILabel) {
            let adStillAvailable = apStory.getAd() != nil
            print("Ad still available: \(adStillAvailable)")
        }
    }
}
