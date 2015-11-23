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


//! Array of ArticleInfo
@property(readonly) NSArray *articlesList;

@property(strong) CategoryInfo *currentCategory;

@property(strong) ArticleInfo *currentArticle;

@property(readonly) NSArray *notEmptySortTypes;

/*
 *  Methods
 */

//! Default initializer
- (id)init;

- (CategoryInfo *)getCategory:(NSString *)sortType index:(NSInteger)index;

- (NSArray *)getCategoriesSortType:(NSString *)type;

- (NSArray *)getArticlesForCategory:(NSString *)type;


@end