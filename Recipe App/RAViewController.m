//
//  RAViewController.m
//  Recipe App
//
//  Created by Derik Flanary on 1/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RAViewController.h"
#import "RATAbleViewDataSource.h"


@interface RAViewController ()
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) RATAbleViewDataSource *dataSource;

@end

@implementation RAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Recipe App";
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame];
    self.dataSource = [[RATAbleViewDataSource alloc] init];
    self.tableView.dataSource = self.dataSource;
    [self.dataSource registerTableView:self.tableView];
    [self.view addSubview:self.tableView];
    
    
    
    // Do any additional setup after loading the view.
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

@end
