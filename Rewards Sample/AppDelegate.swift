//
//  AppDelegate.swift
//  Rewards Sample
//
//  Created by João Paulo Serodio on 03/11/20.
//

import UIKit
import Bagel
import HalloRewardsLibrary

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        Bagel.start()
        
        let token = """
eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfaWQiOiJ2MTdlZWM5ZC1lYjBiLTQzMDYtYWQ3MS1hOTIxYWEyZGJ0MDkiLCJuYW1lIjoiVXNlciBUZXN0IFNleHRhIiwiYnJhbmNoIjoxLCJyZWdpb25hbCI6MiwiY2VudHJhbCI6MywiaWF0IjoxNjE2MTc1NjM0fQ.lBhP7jTDMC6yl-M1oBkQqUksiO6RiHr4uE8M5xGlX6g
"""

        HalloRewards.initialize(token: token)

        return true
    }

    // MARK: UISceneSession Lifecycle
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

}

