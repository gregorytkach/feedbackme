//
//  ControllerTableCategories.h
//  feedbackme
//
//  Created by Казанцев Алексей on 11/7/15.
//  Copyright © 2015 Казанцев Алексей. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ControllerPageWithTable.h"

@interface ControllerTableCategories : ControllerPageWithTable


/*
 * Methods
 */

- (void)viewDidLoad;

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section;

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;

@end
