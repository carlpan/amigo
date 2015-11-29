//
//  HomeViewController.m
//  AmigoTab
//
//  Created by Carl Pan on 8/9/15.
//  Copyright (c) 2015 Carl Pan. All rights reserved.
//

#import "HomeViewController.h"
#import "AssignmentViewController.h"

typedef enum {
    SideTableViewRooms = 0,
    SideTableViewVIP,
    SideTableViewDiscount,
    SideTableViewBathroom,
    SideTableViewHoliday
} SideTableViewRow;

@interface HomeViewController ()

@property (nonatomic, strong) NSArray *mainMenuItems;

- (NSString *)titleForCellAtIndexPath:(NSIndexPath *)indexPath;
- (NSString *)subTitleForCellAtIndexPath:(NSIndexPath *)indexPath;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // initialize the left table view
    self.mainTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    self.mainMenuItems = @[@"clockout", @"assignment", @"checks", @"amountprocess", @"shifts"];
    
    // initialize
    self.sideTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if ([tableView isEqual:self.mainTableView]) {
        return self.mainMenuItems.count;
    } else if ([tableView isEqual:self.sideTableView]) {
        // hard code in the side table count
        return 5;
    }
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    tableView.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
    tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    if ([tableView isEqual:self.mainTableView]) {
        tableView.backgroundColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
        [tableView setSeparatorColor:[UIColor colorWithRed:0.59 green:0.59 blue:0.59 alpha:1.0]];
        
        NSString *cellIdentifier = [self.mainMenuItems objectAtIndex:indexPath.row];
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
        
        return cell;
    } else if ([tableView isEqual:self.sideTableView]) {
        tableView.backgroundColor = [UIColor colorWithRed:0.29 green:0.29 blue:0.29 alpha:1.0];
        [tableView setSeparatorColor:[UIColor colorWithRed:0.59 green:0.59 blue:0.59 alpha:1.0]];
        
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
        
        // configure cell
        UIColor *textColor = [UIColor colorWithRed:0.96 green:0.65 blue:0.14 alpha:1.0];
        UIFont *titleFont = [UIFont fontWithName:@"Heiti SC" size:20];
        UIFont *subtitleFont = [UIFont fontWithName:@"Heiti SC" size:12];
        
        // add text
        [cell.textLabel setText:[self titleForCellAtIndexPath:indexPath]];
        [cell.detailTextLabel setText:[self subTitleForCellAtIndexPath:indexPath]];
        // set text color
        cell.textLabel.textColor = textColor;
        cell.detailTextLabel.textColor = textColor;
        // set text font
        cell.textLabel.font = titleFont;
        cell.detailTextLabel.font = subtitleFont;

        [cell.detailTextLabel setNumberOfLines:2];
        return cell;
    }
    
    return nil;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([tableView isEqual:self.mainTableView]) {
        cell.backgroundColor = [UIColor colorWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
    } else if ([tableView isEqual:self.sideTableView]) {
        cell.backgroundColor = [UIColor colorWithRed:0.29 green:0.29 blue:0.29 alpha:1.0];
    }
}


#pragma mark - ()

- (NSString *)titleForCellAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellText = nil;
    switch (indexPath.row) {
        case SideTableViewRooms:
            cellText = NSLocalizedString(@"所有房间都已订满", nil);
            break;
        case SideTableViewVIP:
            cellText = NSLocalizedString(@"免费赠送VIP果盘", nil);
            break;
        case SideTableViewDiscount:
            cellText = NSLocalizedString(@"20%减价", nil);
            break;
        case SideTableViewBathroom:
            cellText = NSLocalizedString(@"清理703和704号房的卫生间", nil);
            break;
        case SideTableViewHoliday:
            cellText = NSLocalizedString(@"假期就在近期！", nil);
            break;
    }
    
    return cellText;
}

- (NSString *)subTitleForCellAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellText = nil;
    switch (indexPath.row) {
        case SideTableViewRooms:
            cellText = NSLocalizedString(@"今晚已指定给703和704号放假", nil);
            break;
        case SideTableViewVIP:
            cellText = NSLocalizedString(@"送给703和704号房间", nil);
            break;
        case SideTableViewDiscount:
            cellText = NSLocalizedString(@"老板说703号房间今晚给打8折", nil);
            break;
        case SideTableViewBathroom:
            cellText = NSLocalizedString(@"今晚顾客到位前", nil);
            break;
        case SideTableViewHoliday:
            cellText = NSLocalizedString(@"加倍努力干活", nil);
            break;
    }
    
    return cellText;
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

//}

/*
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    //NSIndexPath *indexPath = [self.mainTableView indexPathForSelectedRow];
    
    //if ([segue.identifier isEqualToString:@"showAssignment"]) {
    //    AssignmentViewController *destViewController = segue.destinationViewController;
        
    //}
    
    
}
*/



@end
