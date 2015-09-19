//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ManagerRemote;

@interface AppInfo : NSObject

/*
 *  Singleton realization
 */

+ (AppInfo *)instance;


/*
 *  Properties
 */

- (ManagerRemote *)managerRemote;


/*
 *  Methods
 */

@end