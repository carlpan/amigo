//
//  SidebarViewController.h
//  AmigoManager
//
//  Created by Carl Pan on 8/4/15.
//  Copyright (c) 2015 Carl Pan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SidebarViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *sidebarTableView;

@end
