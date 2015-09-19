//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ManagerRemote : NSObject


- (void)send:(id)data callback:(SEL)callback;


@end