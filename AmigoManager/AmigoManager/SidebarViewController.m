//
//  SidebarViewController.m
//  AmigoManager
//
//  Created by Carl Pan on 8/4/15.
//  Copyright (c) 2015 Carl Pan. All rights reserved.
//

#import "SidebarViewController.h"

@interface SidebarViewController ()

@property (nonatomic, strong) NSArray *restaurantGroup;

@end

@implementation SidebarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;

    // remove extra line separators
    self.sidebarTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
    self.restaurantGroup = @[@"徐博馆", @"空中一号", @"南海渔村（珠城）", @"南海渔村（流花）"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.restaurantGroup.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //NSString *cellIdentifier = [self.restaurantGroup objectAtIndex:indexPath.row];
    NSString *cellIdentifier = @"restaurantCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    // customize table view
    UIColor *backColor = [UIColor colorWithRed:0.29 green:0.29 blue:0.29 alpha:1.0];
    tableView.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
    tableView.backgroundColor = backColor;
    tableView.layer.opacity = 1;
    tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;

    // Configure the cell...
    //cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = [self.restaurantGroup objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    cell.backgroundColor = [UIColor colorWithRed:0.29 green:0.29 blue:0.29 alpha:1.0];
    cell.textLabel.textColor = [UIColor whiteColor];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    // set destination view nav bar title
    if ([segue.identifier isEqualToString:@"showDashboard"]) {
        NSIndexPath *indexPath = [self.sidebarTableView indexPathForSelectedRow];
        UINavigationController *destViewController = (UINavigationController *)segue.destinationViewController;
        destViewController.navigationBar.topItem.title = [[self.restaurantGroup objectAtIndex:indexPath.row] capitalizedString];
        
        // set destination view nav bar title attributes
        UIColor *destNavBarTextColor = [UIColor colorWithRed:0.61 green:0.61 blue:0.61 alpha:1.0];
        UIFont *destNavBarTextFont = [UIFont fontWithName:@"Heiti SC" size:26];
        NSDictionary *destNavBarAttributes = @{NSForegroundColorAttributeName: destNavBarTextColor,
                                               NSFontAttributeName: destNavBarTextFont};
        [destViewController.navigationBar setTitleTextAttributes:destNavBarAttributes];
    }
    
    
    // set destinatino view right bar item size

    
}


@end
