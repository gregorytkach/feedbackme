//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import "ArticleInfo.h"


@implementation ArticleInfo
{

}

- (NSString *)id
{
    return nil;
}

- (NSString *)title
{
    return @"some title";
}

- (NSData *)urlImage
{
    NSData * result = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString: @"https://pp.vk.me/c625317/v625317639/49e64/GFd_A2u60GI.jpg"]];
    
    return result;
}

- (NSString *)text
{
    return @"some text";
}

- (NSString *)question
{
    return nil;
}

- (NSArray *)answers
{
    return nil;
}


@end