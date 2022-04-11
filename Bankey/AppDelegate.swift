//
//  AppDelegate.swift
//  Bankey
//
//  Created by Mindy Douglas on 4/6/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    // 1 delete App Delegate code and replace with no storyboard snippet
    // 2 delete Scene Delegate file and main storyboard (cmd delete)
    // 3 Update info plist: shft cmd f "main" and select UIMain Storyboard File Base Name
    // 4 Info.plist Main Application Scene Manifest
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
//        window?.rootViewController = LoginViewController()
//        window?.rootViewController = OnboardingViewController(heroImageName: "delorean", titleText: "Bankey is faster, easier to use, and has a new look and feel that will make you feel like you are back in 1989.")
        window?.rootViewController = OnboardingContainerViewController()
    
        return true
    }
}



