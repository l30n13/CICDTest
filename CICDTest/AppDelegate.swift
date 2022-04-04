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
    
    let APP_SECRECT_APP_CENTER = "d4ebf310-8fa7-4849-9879-bd1462a3c41f"

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        AppCenter.start(withAppSecret: APP_SECRECT_APP_CENTER, services: [Analytics.self, Crashes.self])
        
        return true
    }
}

