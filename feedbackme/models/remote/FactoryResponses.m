//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import "FactoryResponses.h"
#import "ERequestType.h"


@implementation FactoryResponses
{

}


/*
 * Events
 */
+ (id)onManagerArticlesInit:(NSDictionary *)jsonData
{
    return nil;
}

/*
 *  Methods
 */



+ (id)createResponse:(NSString *)requestTypeString jsonData:(NSDictionary *)jsonData
{
    NSInteger requestTypeInt = getRequestTypeByName(requestTypeString);

    id result = nil;

    switch (requestTypeInt)
    {
        case ERT_MANAGER_ARTICLES_INIT:
        {
            result = [self onManagerArticlesInit:jsonData];

            break;
        }
        default:
        {
//            NSAssert(false, [NSString stringWithFormat:"unkown request type: %i", requestTypeInt]);
            break;
        }
    }

    return result;
}


@end