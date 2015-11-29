//
//  OrderOptionViewController.m
//  AmigoManager
//
//  Created by Carl Pan on 8/5/15.
//  Copyright (c) 2015 Carl Pan. All rights reserved.
//

#import "OrderOptionViewController.h"

@interface OrderOptionViewController ()

@property (nonatomic, strong) NSArray *orderOptions;

@end

@implementation OrderOptionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // remove extra line separators
    self.orderTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
    // initialize table cell content
    self.orderOptions = @[@"下单列表", @"采购历史", @"采购报价"];
    
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
    return self.orderOptions.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellIdentifier = @"orderCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    // customize table view
    UIColor *backColor = [UIColor colorWithRed:0.29 green:0.29 blue:0.29 alpha:1.0];
    tableView.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
    tableView.backgroundColor = backColor;
    tableView.layer.opacity = 1;
    tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    
    // Configure the cell...
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = [self.orderOptions objectAtIndex:indexPath.row];
    return cell;

}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    cell.backgroundColor = [UIColor colorWithRed:0.29 green:0.29 blue:0.29 alpha:1.0];
    cell.textLabel.textColor = [UIColor whiteColor];
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    
    if ([segue.identifier isEqualToString:@"showOrder"]) {
        // Set the title of navigation
        NSIndexPath *indexPath = [self.orderTableView indexPathForSelectedRow];
        UINavigationController *destViewController = (UINavigationController *)segue.destinationViewController;
        destViewController.navigationBar.topItem.title = [[self.orderOptions objectAtIndex:indexPath.row] capitalizedString];
        
        // set destination view nav bar title attributes
        UIColor *destNavBarTextColor = [UIColor colorWithRed:0.61 green:0.61 blue:0.61 alpha:1.0];
        UIFont *destNavBarTextFont = [UIFont fontWithName:@"Heiti SC" size:26];
        NSDictionary *destNavBarAttributes = @{NSForegroundColorAttributeName: destNavBarTextColor,
                                               NSFontAttributeName: destNavBarTextFont};
        [destViewController.navigationBar setTitleTextAttributes:destNavBarAttributes];
    }

}


- (IBAction)unwindToOrderOption:(UIStoryboardSegue *)segue {
    
}


@end
