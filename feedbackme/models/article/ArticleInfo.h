//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ArticleInfo : NSObject

//todo:finish it

/*
 *  Properties
 */

- (NSString *)id;

- (NSString *)title;

- (NSData *)urlImage;

- (NSString *)text;

- (NSString *)question;

//! Array of AnswerInfo
- (NSArray *)answers;


@end