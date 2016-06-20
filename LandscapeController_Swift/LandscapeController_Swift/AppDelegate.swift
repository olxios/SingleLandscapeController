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

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(application: UIApplication) {}

    func applicationDidEnterBackground(application: UIApplication) {}

    func applicationWillEnterForeground(application: UIApplication) {}

    func applicationDidBecomeActive(application: UIApplication) {}

    func applicationWillTerminate(application: UIApplication) {}
    
    // MARK: Orientation

    func application(application: UIApplication, supportedInterfaceOrientationsForWindow window: UIWindow?) -> UIInterfaceOrientationMask {
        
        if self.window?.rootViewController?.presentedViewController is SecondViewController {
            
            let secondController = self.window!.rootViewController!.presentedViewController as! SecondViewController
            
            if secondController.isPresented {
                return UIInterfaceOrientationMask.All;
            } else {
                return UIInterfaceOrientationMask.Portrait;
            }
        } else {
            return UIInterfaceOrientationMask.Portrait;
        }
        
    }
}

