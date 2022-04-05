//
//  AppDelegate.swift
//  CICDTest
//
//  Created by Mahbubur Rashid on 29/3/22.
//

import UIKit
import AppCenter
import AppCenterCrashes
import AppCenterAnalytics

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    let APP_SECRECT_APP_CENTER = "48d3d2df-b6e8-446a-a1c1-a88c9656b654"

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        AppCenter.start(withAppSecret: APP_SECRECT_APP_CENTER, services: [Analytics.self, Crashes.self])
        
        return true
    }
}

