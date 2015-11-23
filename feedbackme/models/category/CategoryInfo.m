//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import "CategoryInfo.h"


@implementation CategoryInfo
{
    NSString *_type;
    NSString *_sortType;
}

- (NSString *)sortType
{
    return _sortType;
}

- (NSString *)type
{
    return _type;
}

- (NSString *)urlImage
{
    return nil;
}

//todo:remove
- (void)setSortType:(NSString *)value
{
    _sortType = value;
}

//todo:remove
- (void)setType:(NSString *)value
{
    _type = value;

}


@end