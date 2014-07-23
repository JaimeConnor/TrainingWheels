//
//  MFCAppDelegate.m
//  My First Code App
//
//  Created by Jaime Connor on 7/22/14.
//  Copyright (c) 2014 Jaime Connor. All rights reserved.
//

#import "MFCAppDelegate.h"
#import "MFCRootViewController.h"

@implementation MFCAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // Override point for customization after application launch.
    
    MFCRootViewController * rVC = [[MFCRootViewController alloc] init];
    
    self.window.rootViewController = rVC;
    
    //self.view.rVC = [UIColor redColor];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
