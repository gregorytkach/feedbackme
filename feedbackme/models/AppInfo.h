//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ManagerRemote.h"
#import "ManagerArticles.h"
#import "ManagerPreferences.h"

@interface AppInfo : NSObject

/*
 *  Singleton realization
 */

+ (AppInfo *)instance;


/*
 *  Properties
 */

- (ManagerArticles *)managerArticles;

- (ManagerPreferences *)managerPreferences;

- (ManagerRemote *)managerRemote;



/*
 *  Methods
 */

@end