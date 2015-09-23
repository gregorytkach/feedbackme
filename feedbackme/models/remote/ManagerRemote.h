//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ManagerBase.h"
#import "UtilsCallbacks.h"

@interface ManagerRemote : ManagerBase

/*
 *  Requests
 */

- (void)sendRequest:(NSInteger)requestType onComplete:(CALLBACK_WITH_RESPONSE)onComplete;

- (void)sendRequest:(NSInteger)requestType data:(id)data;

- (void)sendRequest:(NSInteger)requestType data:(id)data onComplete:(CALLBACK_WITH_RESPONSE)onComplete;

- (void)sendRequest:(NSInteger)requestType data:(id)data onComplete:(CALLBACK_WITH_RESPONSE)onComplete onError:(CALLBACK_WITH_RESPONSE)onError;

/*
 * Download file
 */

@end