//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import "ManagerRemote.h"


@implementation ManagerRemote
{

}

- (void)send:(id)data callback:(SEL)callback
{

    NSData *returnedData = nil;

    NSDictionary * response = [NSJSONSerialization JSONObjectWithData:returnedData options:0 error:&error];

    if (callback != nil)
    {
        [self performSelectorOnMainThread:callback withObject:response waitUntilDone:false];
    }

}


@end