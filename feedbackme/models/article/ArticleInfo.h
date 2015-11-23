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

- (NSString *)urlImage;

- (NSString *)text;

- (NSString *)question;

- (NSString *)categoryType;

//todo:remove after implement server side
- (void)setCategoryType:(NSString *)value;

//! array of AnswerInfo
- (NSArray *)answers;

/*
 * Methods
 */

//! Default initializer
- (id)init;

- (void)deserialize:(id)data;


@end