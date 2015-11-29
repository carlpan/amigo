//
//  ChecksViewController.h
//  AmigoTab
//
//  Created by Carl Pan on 8/10/15.
//  Copyright (c) 2015 Carl Pan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChecksViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *unpayTableView;
@property (weak, nonatomic) IBOutlet UITableView *payTableView;

- (IBAction)backButtonClicked:(id)sender;

@end
