//
//  DetailsViewController.m
//  Recipe App
//
//  Created by Derik Flanary on 1/10/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DetailsViewController.h"
#import "RAViewController.h"
#import "RARecipes.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame: CGRectMake(0, 10, self.view.frame.size.width,self.view.frame.size.height-20)];
    scrollView.backgroundColor = [UIColor whiteColor];
    scrollView.alwaysBounceVertical = YES;
    [self.view addSubview:scrollView];
    
    
    
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 300, 50)];
    title.text = [RARecipes titleAtIndex:self.recipeIndex];
    title.font = [UIFont boldSystemFontOfSize:18];
    [scrollView addSubview:title];

    UILabel *description = [[UILabel alloc] initWithFrame:CGRectMake(20, 70, 300, 100)];
    description.numberOfLines = 0;
    description.text = [RARecipes descriptionAtIndex:self.recipeIndex];
    [scrollView addSubview:description];

    
    
    NSInteger ingredientCount = [RARecipes ingredientCountAtIndex:self.recipeIndex];
   
    CGFloat y = 170;
    NSString *ingType;
    NSString *volume;
    NSString *totalIngredients;
    NSInteger x;
    for (x = 0; x < ingredientCount-1; x++){
        
        ingType = [RARecipes ingredientTypeAtIndex:x inRecipeAtIndex:self.recipeIndex];
        volume = [RARecipes ingredientVolumeAtIndex:x inRecipeAtIndex:self.recipeIndex];
        UILabel *ingredients = [[UILabel alloc] initWithFrame:CGRectMake(20, y, 300, 30)];
        ingredients.backgroundColor = [UIColor blueColor];
        y = y + 30;
        totalIngredients = [NSString stringWithFormat:@"%@   -   %@", ingType, volume];
        ingredients.text = totalIngredients;
        [scrollView addSubview:ingredients];
        
        
   
    }
    
     y = 400;
    for (NSString *theCommand in [RARecipes directionsAtIndex:self.recipeIndex]){
       
        UILabel *directions = [[UILabel alloc] initWithFrame:CGRectMake(20, y, 300, 50)];
        directions.numberOfLines = 12;
        directions.font = [UIFont systemFontOfSize:8];
        directions.text = theCommand;
        [scrollView addSubview:directions];
        y = y + 25;
    }

    
    
    
        //ingredients.textAlignment = NSTextAlignmentCenter;
    
  
    
    
    
    
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
