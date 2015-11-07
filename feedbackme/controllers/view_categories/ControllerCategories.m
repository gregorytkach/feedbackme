//
//  ControllerCategories.m
//  feedbackme
//
//  Created by Казанцев Алексей on 11/7/15.
//  Copyright © 2015 Казанцев Алексей. All rights reserved.
//

#import "ControllerCategories.h"

@interface ControllerCategories () {
    
    NSMutableArray * categoriesArray;
    NSMutableArray * categoryTableArray;
    
}

@end

@implementation ControllerCategories

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        self.tableView.dataSource = self;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    categoriesArray = [[NSMutableArray alloc] initWithObjects:@"Лучшее", @"Общество", @"Тематические",nil];
    
    NSMutableArray * categoryNew = [[NSMutableArray alloc] initWithObjects:@"1", @"2", @"3", nil];
    NSMutableArray * categorySocial = [[NSMutableArray alloc] initWithObjects:@"one", @"two", @"three",@"four", nil];
    NSMutableArray * categoryThematic = [[NSMutableArray alloc] initWithObjects:@"один", @"два", @"три", nil];
    
    categoryTableArray = [[NSMutableArray alloc] initWithObjects: categoryNew, categorySocial, categoryThematic, nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [categoriesArray count];
}

- (NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [categoriesArray objectAtIndex:section];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [categoryTableArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"allCategoriesCell"];
    
    return cell;
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)



@end
