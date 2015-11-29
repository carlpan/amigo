//
//  MainTabBarViewController.h
//  AmigoTab
//
//  Created by Carl Pan on 8/7/15.
//  Copyright (c) 2015 Carl Pan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainTabBarViewController : UIViewController

@property (weak, nonatomic) UIViewController *currentViewController;
@property (weak, nonatomic) IBOutlet UIView *placeholder;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *tabBarsButtons;

- (void) setSelectedIndex:(int)index;

@end
