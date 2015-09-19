//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import "AppInfo.h"
#import "ManagerRemote.h"
#import "ManagerArticles.h"
#import "ManagerPreferences.h"


@implementation AppInfo
{
    NSMutableArray *_managers;

    ManagerArticles *_managerArticles;
    ManagerPreferences *_managerPreferences;
    ManagerRemote *_managerRemote;
}

+ (AppInfo *)instance
{
    static AppInfo *_instance = nil;

    @synchronized (self)
    {
        if (_instance == nil)
        {
            _instance = [[self alloc] init];
            [_instance postInit];
        }

    };

    return _instance;
}

/*
 *  Properties
 */

- (ManagerArticles *)managerArticles
{
    return _managerArticles;
}

- (ManagerPreferences *)managerPreferences
{
    return _managerPreferences;
}

- (ManagerRemote *)managerRemote
{
    return _managerRemote;
}


/*
 *  Methods
 */

- (id)init
{
    self = [super init];

    if (self != nil)
    {
        [self initInternal];
    }

    return self;
}

- (void)initInternal
{
    _managers = [NSMutableArray array];

    _managerArticles = [[ManagerArticles alloc] init];
    [_managers addObject:_managerArticles];

    _managerPreferences = [[ManagerPreferences alloc] init];
    [_managers addObject:_managerPreferences];

    _managerRemote = [[ManagerRemote alloc] init];
    [_managers addObject:_managerRemote];
}

- (void)postInit
{
       for(ManagerBase *manager in _managers)
       {
           [manager postInit];
       }
}

@end