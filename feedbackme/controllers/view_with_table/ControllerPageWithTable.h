//
// Created by Gregory Tkach on 11/23/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ControllerPageWithTable : UITableViewController <UITableViewDataSource>


/*
 * Properties
 */

- (BOOL)prefersStatusBarHidden;

/*
 *  Methods
 */

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;


@end