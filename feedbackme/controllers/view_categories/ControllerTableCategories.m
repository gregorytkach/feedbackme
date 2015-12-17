//
//  ControllerTableCategories.m
//  feedbackme
//
//  Created by Казанцев Алексей on 11/7/15.
//  Copyright © 2015 Казанцев Алексей. All rights reserved.
//

#import <AFNetworking/UIImageView+AFNetworking.h>
#import "ControllerTableArticles.h"
#import "ControllerTableCategories.h"
#import "ManagerArticles.h"
#import "AppInfo.h"
#import "EStoryboardID.h"
#import "ControllerCellCategory.h"


@implementation ControllerTableCategories
{
    NSArray *_notEmptySortTypes;

    ManagerArticles *_managerArticles;
}

/*
 * Properties
 */



/*
 * Events
 */

/*
 * Methods
 */

- (void)viewDidLoad
{
    [super viewDidLoad];
        
    _managerArticles = AppInfo.instance.managerArticles;
    _notEmptySortTypes = _managerArticles.notEmptySortTypes;
    
    self.tableView.backgroundColor = [UIColor blackColor];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return _notEmptySortTypes.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    //todo: localize
    return _notEmptySortTypes[(NSUInteger) section];
}

// todo: change textLabel color
- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section
{
    view.tintColor = [UIColor blackColor];
    
    UITableViewHeaderFooterView *header = (UITableViewHeaderFooterView *)view;
    [header.textLabel setTextColor:[UIColor whiteColor]];
    [header.textLabel setTextAlignment:NSTextAlignmentCenter];
    header.textLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:10];
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return 40;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSString *sortType = _notEmptySortTypes[(NSUInteger) section];

    NSArray *categories = [_managerArticles getCategoriesSortType:sortType];

    return categories.count;
}

//todo: review
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ControllerCellCategory *result = (ControllerCellCategory *) [tableView dequeueReusableCellWithIdentifier:ESID_CELL_CATEGORY];

    NSString *sortType = _notEmptySortTypes[(NSUInteger) indexPath.section];

    CategoryInfo *entity = [_managerArticles getCategory:sortType index:indexPath.row];

    result.entity = entity;

    return result;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if (![segue.identifier isEqualToString:ESID_SHOW_CURRENT_CATEGORY])
    {
        return;
    }

    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];

    NSString *sortType = _notEmptySortTypes[(NSUInteger) indexPath.section];

    CategoryInfo *currentCategory = [_managerArticles getCategory:sortType index:indexPath.row];

    _managerArticles.currentCategory = currentCategory;
}


@end
