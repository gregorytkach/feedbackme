//
//  ControllerCategories.m
//  feedbackme
//
//  Created by Казанцев Алексей on 11/7/15.
//  Copyright © 2015 Казанцев Алексей. All rights reserved.
//

#import <AFNetworking/UIImageView+AFNetworking.h>
#import "CategoryInfo.h"
#import "ControllerTableArticles.h"
#import "ControllerCategories.h"


@interface ControllerCategories () {
    
    NSMutableArray * _categoriesArray;
    NSMutableArray * _sectionsArray;
    
}

@end

@implementation ControllerCategories

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _categoriesArray = [[NSMutableArray alloc]initWithObjects:@"First", @"Second", @"Third", @"Fourth", nil];
    
    NSMutableArray * newCateg = [[NSMutableArray alloc]initWithObjects:@"1", @"2", nil];
    NSMutableArray * topCateg = [[NSMutableArray alloc]initWithObjects:@"3", @"4", nil];
    NSMutableArray * myCateg = [[NSMutableArray alloc]initWithObjects:@"5", @"6", nil];
    NSMutableArray * draftCateg = [[NSMutableArray alloc]initWithObjects:@"7", @"8", nil];
    
    _sectionsArray = [[NSMutableArray alloc]initWithObjects:newCateg, topCateg, myCateg, draftCateg, nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [_categoriesArray count];
}

- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [_categoriesArray objectAtIndex:section];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray* ratedArray = [_sectionsArray subarrayWithRange:NSMakeRange(0, 2)];
    return [ratedArray count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"AllCategoriesCell"];
    
    NSString *tempCategory = [[_sectionsArray objectAtIndex:[indexPath section]] objectAtIndex:[indexPath row]];
    
    UILabel *titleNameLabel = (UILabel*)[[cell contentView] viewWithTag:1];
    titleNameLabel.text = tempCategory;
    
    
    
    return cell;
}


- (BOOL)prefersStatusBarHidden {
    return YES;
}

#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"ShowCurrentCategory"]) {
        NSIndexPath * indexPath = [self.tableView indexPathForSelectedRow];
        ControllerTableArticles *destViewController = segue.destinationViewController;
        destViewController.categoryName = [_categoriesArray objectAtIndex: indexPath.section];
        destViewController.title = destViewController.categoryName;
    }
}



@end
