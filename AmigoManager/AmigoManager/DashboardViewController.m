//
//  DashboardViewController.m
//  AmigoManager
//
//  Created by Carl Pan on 8/4/15.
//  Copyright (c) 2015 Carl Pan. All rights reserved.
//

#import "DashboardViewController.h"
#import "SWRevealViewController.h"
#import "TopLeftSubView.h"

@interface DashboardViewController ()

@end

@implementation DashboardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Toggle menu bar
    SWRevealViewController *revealViewController = self.revealViewController;
    if (revealViewController) {
        [self.sidebarButton setTarget:self.revealViewController];
        [self.sidebarButton setAction:@selector(revealToggle:)];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
    
    // Set properties for four sub-UIViews
    UIColor *borderColor = [UIColor colorWithRed:0.61 green:0.61 blue:0.61 alpha:1.0];
    UIColor *backgroundColor = [UIColor colorWithRed:0.29 green:0.29 blue:0.29 alpha:1.0];
    
    // top left UIView
    [self.topLeftSubView.layer setBorderWidth:1.0];
    [self.topLeftSubView.layer setCornerRadius:8.0f];
    [self.topLeftSubView.layer setMasksToBounds:YES];
    [self.topLeftSubView.layer setBorderColor:(CGColorRef)borderColor];
    [self.topLeftSubView setBackgroundColor:backgroundColor];
    
    // top right UIView
    /*
    [self.topRightSubView.layer setBorderWidth:1.0];
    [self.topRightSubView.layer setCornerRadius:8.0f];
    [self.topRightSubView.layer setMasksToBounds:YES];
    [self.topRightSubView.layer setBorderColor:(CGColorRef)borderColor];
    [self.topRightSubView setBackgroundColor:backgroundColor];

    // bottom left UIView
    [self.bottomLeftSubView.layer setBorderWidth:1.0];
    [self.bottomLeftSubView.layer setCornerRadius:8.0f];
    [self.bottomLeftSubView.layer setMasksToBounds:YES];
    [self.bottomLeftSubView.layer setBorderColor:(CGColorRef)borderColor];
    [self.bottomLeftSubView setBackgroundColor:backgroundColor];
    
    // bottom right UIView
    [self.bottomRightSubView.layer setBorderWidth:1.0];
    [self.bottomRightSubView.layer setCornerRadius:8.0f];
    [self.bottomRightSubView.layer setMasksToBounds:YES];
    [self.bottomRightSubView.layer setBorderColor:(CGColorRef)borderColor];
    [self.bottomRightSubView setBackgroundColor:backgroundColor];
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

- (IBAction)unwindToDashboard:(UIStoryboardSegue *)segue {
    
}

- (IBAction)buttonClicked:(id)sender {
    //UIView *newView = [[UIView alloc] initWithFrame:CGRectMake(70, 230, 300, 300)];
    
    //TopLeftSubView *topLeft = [[TopLeftSubView alloc] initWithFrame:CGRectMake(70, 230, 300, 300)];
    TopLeftSubView *topLeft = [[TopLeftSubView alloc] init];
    //newView.backgroundColor = [UIColor redColor];
    [self.view addSubview:topLeft];
    
    //[self.view addSubview:newView];
    //newView.alpha = 0;
    //[UIView animateWithDuration:0.25 delay:0.0 options:UIViewAnimationOptionCurveLinear animations:^{
    //    newView.alpha = 1;
    //} completion:nil];
    
}


@end
