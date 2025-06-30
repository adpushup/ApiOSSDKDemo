//
//  AppOpenListener.swift
//  SwiftUIImplementation
//
//  Created by Rishabh Tripathi on 11/06/25.
//
import ApMobileSDK

class AppOpenListener: NSObject, ApAppOpenListener {
    func onComplete() {
        print("Ad completed")
    }
}
