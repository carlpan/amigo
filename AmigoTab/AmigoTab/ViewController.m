//
//  ViewController.m
//  AmigoTab
//
//  Created by Carl Pan on 8/10/15.
//  Copyright (c) 2015 Carl Pan. All rights reserved.
//

#import "ViewController.h"
#import "MainTabBarViewController.h"
#import "FloorViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)buttonClicked:(id)sender {
    // Set destination view controller as child of root view controller
    MainTabBarViewController *tabBarController = (MainTabBarViewController *)[[(AppDelegate *)[[UIApplication sharedApplication] delegate] window] rootViewController];
    
    // index 1 is the floor view
    [tabBarController setSelectedIndex:1];
    [self dismissViewControllerAnimated:NO completion:nil];
}

@end
