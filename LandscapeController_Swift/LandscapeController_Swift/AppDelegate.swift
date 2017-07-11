//
//  AppDelegate.swift
//  LandscapeController_Swift
//
//  Created by olxios on 20/06/16.
//  Copyright © 2016 olxios. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    // MARK: Application State

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {}

    func applicationDidEnterBackground(_ application: UIApplication) {}

    func applicationWillEnterForeground(_ application: UIApplication) {}

    func applicationDidBecomeActive(_ application: UIApplication) {}

    func applicationWillTerminate(_ application: UIApplication) {}
    
    // MARK: Orientation

    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        
        if self.window?.rootViewController?.presentedViewController is SecondViewController {
            
            let secondController = self.window!.rootViewController!.presentedViewController as! SecondViewController
            
            if secondController.isPresented {
                return UIInterfaceOrientationMask.all;
            } else {
                return UIInterfaceOrientationMask.portrait;
            }
        } else {
            return UIInterfaceOrientationMask.portrait;
        }
        
    }
}

