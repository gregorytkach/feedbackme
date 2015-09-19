//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import "ManagerRemote.h"


@implementation ManagerRemote
{

}


- (void)sendRequest:(NSInteger)requestType onComplete:(SEL)onComplete
{
    [self sendRequest:requestType data:nil onComplete:onComplete onError:nil];
}

- (void)sendRequest:(NSInteger)requestType data:(id)data
{
    [self sendRequest:requestType data:data onComplete:nil onError:nil];
}

- (void)sendRequest:(NSInteger)requestType data:(id)data onComplete:(SEL)onComplete
{
    [self sendRequest:requestType data:data onComplete:onComplete onError:nil];
}

- (void)sendRequest:(NSInteger)requestType data:(id)data onComplete:(SEL)onComplete onError:(SEL)onError
{
    NSData *returnedData = nil;

    NSError * error = nil;

    NSDictionary * response = [NSJSONSerialization JSONObjectWithData:returnedData options:0 error:&error];

    if (onComplete != nil)
    {
        [self performSelectorOnMainThread:onComplete withObject:response waitUntilDone:false];
    }

    //todo:use
//    if ([self _isRequestError:jsonData])
//    {
//        return jsonData;
//    }
}

- (BOOL)_isResponseError:(NSDictionary *)jsonData
{
    NSString *status = jsonData[@"status"];
    
    return status == nil || [status isEqualToString:@"error"];
}

@end