//
//  RATAbleViewDataSource.h
//  Recipe App
//
//  Created by Derik Flanary on 1/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface RATAbleViewDataSource : NSObject <UITableViewDataSource>
- (void) registerTableView:(UITableView *)tableView;
@end
