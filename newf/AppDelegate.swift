//
//  AppDelegate.swift
//  newf
//
//  Created by Merey Orynbassar on 20.02.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
      
//      func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//
//          window = UIWindow(frame: UIScreen.main.bounds)
//          window?.makeKeyAndVisible()
//          window?.backgroundColor = .systemBackground
//          window?.rootViewController = ViewController()
//
//          return true
//      }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        // Initialize the root view controller
        let rootViewController = ViewController()
        
        // Create the navigation controller with the root view controller
        let navigationController = UINavigationController(rootViewController: rootViewController)
        
        // Set the navigation controller as the root view controller
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return true
    }


}

