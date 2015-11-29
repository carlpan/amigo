//
//  DashboardViewController.h
//  AmigoManager
//
//  Created by Carl Pan on 8/4/15.
//  Copyright (c) 2015 Carl Pan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DashboardViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
- (IBAction)unwindToDashboard:(UIStoryboardSegue *)segue;

@property (weak, nonatomic) IBOutlet UIView *topLeftSubView;
//@property (weak, nonatomic) IBOutlet UIView *topRightSubView;
//@property (weak, nonatomic) IBOutlet UIView *bottomLeftSubView;
//@property (weak, nonatomic) IBOutlet UIView *bottomRightSubView;

@end
