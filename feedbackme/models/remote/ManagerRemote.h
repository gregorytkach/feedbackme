//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ManagerBase.h"


@interface ManagerRemote : ManagerBase

- (void)sendRequest:(NSInteger)requestType onComplete:(SEL)onComplete;

- (void)sendRequest:(NSInteger)requestType data:(id)data;

- (void)sendRequest:(NSInteger)requestType data:(id)data onComplete:(SEL)onComplete;

- (void)sendRequest:(NSInteger)requestType data:(id)data onComplete:(SEL)onComplete onError:(SEL)onError;

@end