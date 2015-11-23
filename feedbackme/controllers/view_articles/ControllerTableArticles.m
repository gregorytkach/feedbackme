//
//  ControllerTableArticles.m
//  feedbackme
//
//  Created by Казанцев Алексей on 9/19/15.
//  Copyright (c) 2015 Казанцев Алексей. All rights reserved.
//

#import "ControllerTableArticles.h"

@implementation ControllerTableArticles
{
    NSMutableArray * _currentCategory;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    _currentCategory = [[NSMutableArray alloc] initWithObjects:@"10", @"20", @"30", @"40", @"50",nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_currentCategory count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CategoryCell" forIndexPath:indexPath];
    
    NSString *tempCategory = [_currentCategory objectAtIndex:[indexPath row]];
    
    UILabel *titleNameLabel = (UILabel*)[[cell contentView] viewWithTag:3];
    titleNameLabel.text = tempCategory;
    
    
    return cell;
}


@end