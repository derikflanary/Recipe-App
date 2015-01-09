//
//  RATAbleViewDataSource.m
//  Recipe App
//
//  Created by Derik Flanary on 1/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RATAbleViewDataSource.h"
#import "RARecipes.h"
#import "TypeOneTableViewCell.h"
#import "TypeTwoTableViewCell.h"


@implementation RATAbleViewDataSource


- (void) registerTableView:(UITableView *)tableView{
    [tableView registerClass:[TypeOneTableViewCell class] forCellReuseIdentifier:@"Cell One"];
    
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
    //choose pile of cells to draw *cell from
    
    
    TypeOneTableViewCell *cell = (TypeOneTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"Cell One"];
    
     cell.textLabel.text = [RARecipes titleAtIndex:indexPath.row];
    
    //cell.textLabel.text = @"Recipes";
    
    return cell;
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    return @"Recipes";
}





@end
