//
//  NavigationViewController.m
//  AmigoManager
//
//  Created by Carl Pan on 8/4/15.
//  Copyright (c) 2015 Carl Pan. All rights reserved.
//

#import "NavigationViewController.h"

@interface NavigationViewController ()

@end

@implementation NavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // looking for color picker: http://uicolor.io/#/hex-to-ui
    // change navigation bar color (HEX #: 4A4A4A, Alpha 1.0)
    UIColor *navBarColor = [UIColor colorWithRed:0.29 green:0.29 blue:0.29 alpha:1.0];
    [[UINavigationBar appearance] setBarTintColor:navBarColor];
    
    // set navigation bar title text color
    UIColor *navBarTextColor = [UIColor colorWithRed:0.61 green:0.61 blue:0.61 alpha:1.0];
    UIFont *navBarTextFont = [UIFont fontWithName:@"Heiti SC" size:26];
    NSDictionary *navBarAttributes = @{NSForegroundColorAttributeName: navBarTextColor,
                                       NSFontAttributeName: navBarTextFont};
    [[UINavigationBar appearance] setTitleTextAttributes:navBarAttributes];
    
    // change bar button font
    /*
    UIFont *barButtonFont = [UIFont fontWithName:@"SD Gothic Neo" size:20];
    NSDictionary *barButtom = @{NSFontAttributeName:barButtonFont,
                                NSForegroundColorAttributeName:navBarTextColor};
    [[UIBarButtonItem appearance] setTitleTextAttributes:barButtom forState:UIControlStateNormal];
     */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
