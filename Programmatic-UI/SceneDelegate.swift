//
//  SceneDelegate.swift
//  Programmatic-UI
//
//  Created by Andrei Shpartou on 28/11/2023.
//  Alex Paul youtube lessons

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    // [Programmatic UI]
    // iOS 13 and later now has a SceneDelegate, this is where the window property is
    // in order to setup your programmatic UI code you must set the
    // rootViewController property of the windows
    // e.g. window.rootViewController = someViewController()
    
    // Steps in removing the default Main.storyboard file from the info.plist
    // 1. delete the "Main storyboard" entry from the info.plist
    // 2. delete the storyboard name value from the "Scene configuration" (general properties of the project -> Info -> ...)
    // 3. delete the Main.storyboard file
    // [Programmatic UI]
    
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        
        // [Programmatic UI]
        // Steps in configuring programmatic UI in the SceneDelegate
        // Steps in configuring the window property
        // [Programmatic UI]
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        // [Programmatic UI]
        // set up the windows's frame to take up the entire device's screen
        // instantiating the windows with a frame
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.windowScene = windowScene
        // window?.rootViewController = ViewController() or
        // embedding a UIViewController in a UINavigationController
        window?.rootViewController = UINavigationController(rootViewController: MainViewController())
        window?.makeKeyAndVisible()
        // [Programmatic UI]
    }
 
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

