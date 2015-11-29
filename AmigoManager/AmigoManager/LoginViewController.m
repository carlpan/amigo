//
//  LoginViewController.m
//  AmigoManager
//
//  Created by Carl Pan on 8/3/15.
//  Copyright (c) 2015 Carl Pan. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@property (weak, nonatomic) IBOutlet UITextField *userTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@end

@implementation LoginViewController

#pragma mark - UIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)logInPressed:(UIButton *)sender {
    static NSString *dashboardView = @"LoggedInToDashboard";
    
    // login the test user
    [PFUser logInWithUsernameInBackground:self.userTextField.text password:self.passwordTextField.text block:^(PFUser *user, NSError *error) {
        if (user) {
            [self performSegueWithIdentifier:dashboardView sender:self];
        } else {
            //NSLog(@"Error: %@", [error userInfo][@"error"]);
            NSString *errorString = [error userInfo][@"error"];
            
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Error"
                                                                           message:errorString
                                                                    preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"Ok"
                                                                    style:UIAlertActionStyleDefault
                                                                  handler:^(UIAlertAction *action) {}];
            [alert addAction:defaultAction];
            [self presentViewController:alert animated:YES completion:nil];
        }
    }];
}
/*
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([identifier isEqualToString:@"LoggedInToDashboard"]) {
        return YES;
    }
    return NO;
}
*/

- (IBAction)unwindToInitial:(UIStoryboardSegue *)segue {
    [PFUser logOut];
}

@end
