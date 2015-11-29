//
//  ChecksViewController.m
//  AmigoTab
//
//  Created by Carl Pan on 8/10/15.
//  Copyright (c) 2015 Carl Pan. All rights reserved.
//

#import "ChecksViewController.h"
#import "MainTabBarViewController.h"
#import "AppDelegate.h"

@interface ChecksViewController ()

@property (nonatomic, strong) NSArray *unpayedRooms;
@property (nonatomic, strong) NSArray *payedRooms;

@end

@implementation ChecksViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // STATIC DATA (numbers all made up for now)
    // initialize the tables
    self.unpayTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    self.unpayedRooms =  @[@"703", @"704", @"708"];
    
    self.payTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    self.payedRooms = @[@"705", @"706"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    // hard code the number for now
    if ([tableView isEqual:self.unpayTableView]) {
        return self.unpayedRooms.count;
    } else if ([tableView isEqual:self.payTableView]) {
        return self.payedRooms.count;
    }
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    tableView.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
    tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    if ([tableView isEqual:self.unpayTableView]) {
        tableView.backgroundColor = [UIColor colorWithRed:0.29 green:0.29 blue:0.29 alpha:1.0];
        [tableView setSeparatorColor:[UIColor colorWithRed:0.59 green:0.59 blue:0.59 alpha:1.0]];
        
        NSString *cellIdentifier = [self.unpayedRooms objectAtIndex:indexPath.row];
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
        
        return cell;
    } else if ([tableView isEqual:self.payTableView]) {
        tableView.backgroundColor = [UIColor colorWithRed:0.55 green:0.55 blue:0.55 alpha:1.0];
        [tableView setSeparatorColor:[UIColor colorWithRed:0.29 green:0.29 blue:0.29 alpha:1.0]];
        
        NSString *cellIdentifier = [self.payedRooms objectAtIndex:indexPath.row];
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
        
        return cell;
    }
 
    return nil;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([tableView isEqual:self.unpayTableView]) {
        cell.backgroundColor = [UIColor colorWithRed:0.29 green:0.29 blue:0.29 alpha:1.0];
    } else if ([tableView isEqual:self.payTableView]) {
        cell.backgroundColor = [UIColor colorWithRed:0.55 green:0.55 blue:0.55 alpha:1.0];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)backButtonClicked:(id)sender {
    // Set destination view controller as child of root view controller
    MainTabBarViewController *tabBarController = (MainTabBarViewController *)[[(AppDelegate *)[[UIApplication sharedApplication] delegate] window] rootViewController];
    
    // index 0 is the home view
    [tabBarController setSelectedIndex:0];
    [self dismissViewControllerAnimated:NO completion:nil];

}

@end
