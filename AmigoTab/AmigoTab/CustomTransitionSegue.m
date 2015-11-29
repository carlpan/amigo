//
//  CustomTransitionSegue.m
//  AmigoTab
//
//  Created by Carl Pan on 8/10/15.
//  Copyright (c) 2015 Carl Pan. All rights reserved.
//

#import "CustomTransitionSegue.h"
#import "MainTabBarViewController.h"
#import "AppDelegate.h"

@implementation CustomTransitionSegue

- (void)perform {
    
    // get source and destination view controller
    //FloorViewController *floorController = (FloorViewController *)self.sourceViewController;
    UIViewController *destViewController = (UIViewController *)self.destinationViewController;
    
    
    // get root view controller
    MainTabBarViewController *tabBarController = (MainTabBarViewController *)[[(AppDelegate *)[[UIApplication sharedApplication] delegate] window] rootViewController];
    
    for (UIView *view in tabBarController.placeholder.subviews) {
        [view removeFromSuperview];
    }
    
    // Add view to placeholder view
    tabBarController.currentViewController = destViewController;
    [tabBarController addChildViewController:destViewController];
    [tabBarController.placeholder addSubview:destViewController.view];
    
    // Set autoresizing
    [tabBarController.placeholder setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    UIView *childView = destViewController.view;
    [childView setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    // fill horizontal
    [tabBarController.placeholder addConstraints: [NSLayoutConstraint constraintsWithVisualFormat: @"H:|[childView]|" options: 0 metrics: nil views: NSDictionaryOfVariableBindings(childView)]];
    
    // fill vertical
    [tabBarController.placeholder addConstraints:[ NSLayoutConstraint constraintsWithVisualFormat: @"V:|-0-[childView]-0-|" options: 0 metrics: nil views: NSDictionaryOfVariableBindings(childView)]];
    
    [tabBarController.placeholder layoutIfNeeded];
    
    // notify did move
    [destViewController didMoveToParentViewController:tabBarController];
}



@end
