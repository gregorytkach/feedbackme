//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ManagerBase.h"

@class ArticleInfo;
@class CategoryInfo;


@interface ManagerArticles : ManagerBase


/*
 *  Properties
 */


//! key - category sort type, value - CategoryInfo
@property(readonly) NSMutableDictionary *categoriesMap;

//! Array of ArticleInfo
@property(readonly) NSArray *articlesList;

@property(strong) CategoryInfo *currentCategory;

@property(strong) ArticleInfo *currentArticle;

/*
 *  Methods
 */

//! Default initializer
- (id)init;

- (NSArray *)getArticlesForCategory:(int)type;


@end