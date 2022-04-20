//
//  AppDelegate.swift
//  Bankey
//
//  Created by Mindy Douglas on 4/6/22.
//

import UIKit

let appColor: UIColor = .systemTeal

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    let loginViewController = LoginViewController()
    let onboardingContainerViewController = OnboardingContainerViewController()
    let dummyViewController = DummyViewController()
    let mainViewController = MainViewController()
    let accountSummaryViewController = AccountSummaryViewController()
        
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        
        loginViewController.delegate = self
        onboardingContainerViewController.delegate = self
        dummyViewController.logoutDelegate = self
        
        window?.rootViewController = accountSummaryViewController
//        window?.rootViewController = mainViewController
//        window?.rootViewController = loginViewController
//        window?.rootViewController = onboardingViewController
//        window?.rootViewController = AccountSummaryViewController()
//        window?.rootViewController = OnboardingContainerViewController()

        return true
    }
}

// makes smooth transition
extension AppDelegate {
    func setRootViewController(_ vc: UIViewController, animated: Bool = true) {
        guard animated, let window = self.window else {
            self.window?.rootViewController = vc
            self.window?.makeKeyAndVisible()
            return
        }

        window.rootViewController = vc
        window.makeKeyAndVisible()
        UIView.transition(with: window,
                          duration: 0.3,
                          options: .transitionCrossDissolve,
                          animations: nil,
                          completion: nil)
    }
}

extension AppDelegate: LoginViewControllerDelegate {
    func didLogin() {
        if LocalState.hasOnboarded {
            setRootViewController(dummyViewController)
        } else {
            setRootViewController(onboardingContainerViewController)
        }
    }
}

extension AppDelegate: OnboardingContainerViewControllerDelegate {
    func didFinishOnboarding() {
        LocalState.hasOnboarded = true
        setRootViewController(dummyViewController)
    }
}

extension AppDelegate: LogoutDelegate {
    func didLogout() {
        setRootViewController(loginViewController)
    }
}

    
    // 1 delete App Delegate code and replace with no storyboard snippet
    // 2 delete Scene Delegate file and main storyboard (cmd delete)
    // 3 Update info plist: shft cmd f "main" and select UIMain Storyboard File Base Name
    // 4 Info.plist Main Application Scene Manifest
    
  
// You can programmatically select the view controller tabs by using
// mainViewController.selectedIndex = 2
