//
//  RAViewController.m
//  Recipe App
//
//  Created by Derik Flanary on 1/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RAViewController.h"
#import "RATAbleViewDataSource.h"
#import "RARecipes.h"
#import "TypeOneTableViewCell.h"
#import "DetailsViewController.h"


@interface RAViewController () <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableView;

//@property (nonatomic, strong) RATAbleViewDataSource *dataSource;

@end

@implementation RAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem * editButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(editOn)];
    self.navigationItem.rightBarButtonItem = editButton;
    
   
    self.title = @"Recipe App";
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    //self.dataSource = [[RATAbleViewDataSource alloc] init];
    //self.tableView.dataSource = self.dataSource;
    //[self.dataSource registerTableView:self.tableView];
    [self.view addSubview:self.tableView];
    
    
    
    // Do any additional setup after loading the view.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [RARecipes count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TypeOneTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell One"];
    if (!cell){
        cell = [TypeOneTableViewCell new];
    }
    cell.textLabel.text = [RARecipes titleAtIndex:indexPath.row];
    
    //cell.textLabel.text = @"Recipes";
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"Recipes";
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //NSString *title = [self titles][indexPath.row]; same as calling "objectAtIndex"
    DetailsViewController * detailViewController = [DetailsViewController new];
    detailViewController.recipeIndex = indexPath.row;
   [self.navigationController pushViewController:detailViewController animated:YES];
    
  
}

-(void)editOn{
    
}


@end
