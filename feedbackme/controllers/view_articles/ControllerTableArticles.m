//
//  ControllerTableArticles.m
//  feedbackme
//
//  Created by Казанцев Алексей on 9/19/15.
//  Copyright (c) 2015 Казанцев Алексей. All rights reserved.
//

#import "ControllerTableArticles.h"
#import "CategoryInfo.h"
#import "ManagerArticles.h"
#import "EStoryboardID.h"
#import "ControllerCellArticle.h"
#import "AppInfo.h"

@implementation ControllerTableArticles
{
    ManagerArticles *_managerArticles;

    CategoryInfo *_currentCategory;
    NSArray *_articlesList;
}

/*
 * Methods
 */

- (void)viewDidLoad
{
    [super viewDidLoad];

    _managerArticles = AppInfo.instance.managerArticles;

    _currentCategory = _managerArticles.currentCategory;

    _articlesList = [_managerArticles getArticlesForCategory:_currentCategory.type];

    self.title = _currentCategory.type;
    
    self.tableView.backgroundColor = [UIColor blackColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _articlesList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ControllerCellArticle *result = (ControllerCellArticle *) [tableView dequeueReusableCellWithIdentifier:ESID_CELL_ARTICLE forIndexPath:indexPath];

    ArticleInfo *entity = _articlesList[(NSUInteger) indexPath.row];

    result.entity = entity;

    return result;
}

@end