//
//  TypeOneTableViewCell.m
//  Recipe App
//
//  Created by Derik Flanary on 1/9/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "TypeOneTableViewCell.h"
#import "RARecipes.h"

@implementation TypeOneTableViewCell


-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    
    self = [super initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"Cell One"];
    self.backgroundColor = [UIColor whiteColor];
    self.detailTextLabel.font = [UIFont fontWithName:@"Arial" size:12.0f];
    self.detailTextLabel.font = [UIFont boldSystemFontOfSize:12];
    self.imageView.image = [UIImage imageNamed:@"02.png"];
    
    return self;
    
}
    




- (void)awakeFromNib {
    // Initialization code
    self.backgroundColor = [UIColor greenColor];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}





@end
