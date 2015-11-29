//
//  HomeViewController.h
//  AmigoTab
//
//  Created by Carl Pan on 8/9/15.
//  Copyright (c) 2015 Carl Pan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *mainTableView;
@property (weak, nonatomic) IBOutlet UITableView *sideTableView;

@end
