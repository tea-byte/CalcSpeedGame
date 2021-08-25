//
//  AppDelegate.swift
//  CalcGameTest
//
//  Created by 今別府勇吾 on 2021/07/27.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var num1 = Int()
    var num2 = Int()
    var num3 = Int()
    var num4 = Int()
    var num5 = Int()
    var num6 = Int()
    var num7 = Int()
    var num8 = Int()
    



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

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

