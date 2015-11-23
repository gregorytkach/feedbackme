//
// Created by Gregory Tkach on 11/23/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import "ControllerPageWithTable.h"


@implementation ControllerPageWithTable
{

}

//todo: move to base
- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

@end