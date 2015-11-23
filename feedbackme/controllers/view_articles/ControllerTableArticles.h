//
//  ControllerTableArticles.h
//  feedbackme
//
//  Created by Казанцев Алексей on 9/19/15.
//  Copyright (c) 2015 Казанцев Алексей. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ControllerTableArticles.h"
#import "ControllerPageWithTable.h"

@class CategoryInfo;

@interface ControllerTableArticles : ControllerPageWithTable
{
    IBOutlet UITableView *controllerArticles;
}

/*
 * Properties
 */


/*
 * Methods
 */

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;


@end
