//
//  MainTabBarViewController.m
//  AmigoTab
//
//  Created by Carl Pan on 8/7/15.
//  Copyright (c) 2015 Carl Pan. All rights reserved.
//

#import "MainTabBarViewController.h"

@interface MainTabBarViewController ()

@end

@implementation MainTabBarViewController

- (void)setSelectedIndex:(int)index {
    if ([self.tabBarsButtons count] <= index) return;
    
    NSArray *allIdentifiers = @[@"HomeSegue", @"FloorSegue", @"RoomSegue"];
    
    [self performSegueWithIdentifier:allIdentifiers[index] sender:self.tabBarsButtons[index]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //if ([self.tabBarsButtons count]) {
    //    [self performSegueWithIdentifier:@"HomeSegue" sender:self.tabBarsButtons[0]];
    //}
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

/*
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"HomeSegue"]
        || [segue.identifier isEqualToString:@"FloorSegue"]
        || [segue.identifier isEqualToString:@"RoomSegue"]) {
        
        //for (int i = 0; i < [self.tabBarButtons.subviews count]; i++) {
        //    UIButton *button = (UIButton *)[self.tabBarButtons.subviews objectAtIndex:i];
        //    [button setSelected:NO];
        //}
        
        UIButton *button = (UIButton *)sender;
        [button setSelected:YES];
    }
}
*/

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSArray *availableIdentifiers = @[@"HomeSegue", @"FloorSegue", @"RoomSegue"];
    
    if ([availableIdentifiers containsObject:segue.identifier]) {
        for (UIButton *btn in self.tabBarsButtons) {
            if (sender != nil && ![btn isEqual:sender]) {
                [btn setSelected:NO];
            } else if (sender != nil) {
                [btn setSelected:YES];
            }
        }
    }
}


@end
