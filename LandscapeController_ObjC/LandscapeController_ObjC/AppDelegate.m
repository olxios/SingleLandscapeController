//
//  AppDelegate.m
//  LandscapeController_ObjC
//
//  Created by olxios on 20/06/16.
//  Copyright © 2016 olxios. All rights reserved.
//

#import "AppDelegate.h"
#import "SecondViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {}

- (void)applicationDidEnterBackground:(UIApplication *)application {}

- (void)applicationWillEnterForeground:(UIApplication *)application {}

- (void)applicationDidBecomeActive:(UIApplication *)application {}

- (void)applicationWillTerminate:(UIApplication *)application {}

#pragma mark - Orientation

- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window
{
    if ([self.window.rootViewController.presentedViewController isKindOfClass:[SecondViewController class]])
    {
        SecondViewController *secondController = (SecondViewController *) self.window.rootViewController.presentedViewController;
        
        if (secondController.isPresented)
        {
            return UIInterfaceOrientationMaskAll;
        }
        else return UIInterfaceOrientationMaskPortrait;
    }
    else return UIInterfaceOrientationMaskPortrait;
}

@end
