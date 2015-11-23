//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import "CategoryInfo.h"
#import "ECategorySortType.h"
#import "ECategoryType.h"


@implementation CategoryInfo
{

}

- (NSString *)sortType
{
    return ECST_TOP;
}

- (NSString *)type
{
    return ECT_BEST_TODAY;
}

- (NSString *)urlImage
{
    return nil;
}


@end