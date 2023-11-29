//
//  AppDelegate.swift
//  Programmatic-UI
//
//  Created by Andrei Shpartou on 28/11/2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    // [Programmatic UI]
    // Pre-iOS 13 the windows? property for the app was here in the AppDelegate
    // var windows: UIWindow?
    // [Programmatic UI]

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // [Programmatic UI]
        // Pre-iOS 13 this is where we setup our programmatic UI / view hierarchy
        // [Programmatic UI]
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

