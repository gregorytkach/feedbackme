//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import "AppInfo.h"
#import "ManagerRemote.h"


@implementation AppInfo
{
    ManagerRemote *_managerRemote;
}

+ (AppInfo *)instance
{
    static AppInfo *_instance = nil;

    static dispatch_once_t onceToken;

    @synchronized (self)
    {
        if (_instance == nil)
        {
            _instance = [[self alloc] init];
        }

    };

    return _instance;
}

/*
 *  Properties
 */

- (ManagerRemote *)managerRemote
{
    return _managerRemote;
}


/*
 *  Methods
 */

@end