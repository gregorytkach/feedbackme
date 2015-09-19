//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum
{
    ERT_MANAGER_ARTICLES_INIT,

    ERT_MANAGER_PREFERENCES_INIT

} ERequestType;

NSArray *_requestTypes = nil;

void tryCreateRequestTypes()
{
    if (_requestTypes != nil)
    {
        return;
    }

    NSMutableArray *requestTypes = [NSMutableArray array];

    [requestTypes addObject:@"ERT_MANAGER_ARTICLES_INIT"];
    [requestTypes addObject:@"ERT_MANAGER_PREFERENCES_INIT"];

    _requestTypes = requestTypes;
}


NSInteger getRequestTypeByName(NSString *name)
{
    tryCreateRequestTypes();

    return [_requestTypes indexOfObject:name];
}

NSString *getRequestTypeString(NSInteger type)
{
    tryCreateRequestTypes();

    return [_requestTypes objectAtIndex:type];
};