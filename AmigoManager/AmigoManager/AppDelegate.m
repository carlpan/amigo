//
//  AppDelegate.m
//  AmigoManager
//
//  Created by Carl Pan on 8/3/15.
//  Copyright (c) 2015 Carl Pan. All rights reserved.
//

#import "AppDelegate.h"
#import <Parse/Parse.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // [Optional] Power your app with Local Datastore. For more info, go to
    // https://parse.com/docs/ios_guide#localdatastore/iOS
    // Enable storing and querying data from Local Datastore. Remove this line if you don't want to
    // use Local Datastore features or want to use cachePolicy.
    [Parse enableLocalDatastore];
    
    // ****************************************************************************
    // Uncomment this line if you want to enable Crash Reporting
    // [ParseCrashReporting enable];
    //
    // Uncomment and fill in with your Parse credentials:
    [Parse setApplicationId:@"NDLYsiLnnDOs58yRbLYuabd8YbbGvew8PNRW9UYc"
                  clientKey:@"qxgsbRH2sA3UR3DCBlXDUUfM6UhTVzYPYDwsXOer"];
    //
    // If you are using Facebook, uncomment and add your FacebookAppID to your bundle's plist as
    // described here: https://developers.facebook.com/docs/getting-started/facebook-sdk-for-ios/
    // [PFFacebookUtils initializeFacebook];
    // ****************************************************************************

    //[PFUser enableAutomaticUser];
    
    //PFACL *defaultACL = [PFACL ACL];
    
    // If you would like all objects to be private by default, remove this line.
    //[defaultACL setPublicReadAccess:YES];
    
    //[PFACL setDefaultACL:defaultACL withAccessForCurrentUser:YES];
    
    // [Optional] Track statistics around application opens.
    //[PFAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
    
    // Register for Push Notifications
    // Register for Push Notitications
    //UIUserNotificationType userNotificationTypes = (UIUserNotificationTypeAlert |
    //                                                UIUserNotificationTypeBadge |
    //                                                UIUserNotificationTypeSound);
    //UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:userNotificationTypes
    //                                                                         categories:nil];
    //[application registerUserNotificationSettings:settings];
    //[application registerForRemoteNotifications];
    
    
    // Create first test user
    /*
    PFUser *user = [PFUser user];
    user.username = @"amigo";
    user.password = @"manager";
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {
            NSLog(@"Successfully uploaded!");
        } else {
            //NSString *errorString = [error userInfo][@"error"];
            NSLog(@"Error");
        }
    }];
    */
    
    // query the test user
    /*
    PFQuery *query = [PFUser query];
    [query whereKey:@"username" equalTo:@"amigo"];
    NSArray *users = [query findObjects];
    for (PFUser *user in users) {
        NSLog(@"%@", user.username);
    }
     */
    
    return YES;
}

/*
- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
    // Store the deviceToken in the current installation and save it to Parse.
    PFInstallation *currentInstallation = [PFInstallation currentInstallation];
    [currentInstallation setDeviceTokenFromData:deviceToken];
    [currentInstallation saveInBackground];
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo {
    [PFPush handlePush:userInfo];
}
*/



- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
