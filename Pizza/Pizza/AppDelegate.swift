//
//  AppDelegate.swift
//  Pizza
//
//  Created by Spiridonova Anastasia on 13.10.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = TabBar()
        window?.makeKeyAndVisible()
        
        
        return true
    }
}

