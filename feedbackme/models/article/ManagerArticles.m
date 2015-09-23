//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import "ManagerArticles.h"
#import "ArticleInfo.h"
#import "CategoryInfo.h"


@implementation ManagerArticles
{
    NSMutableArray *_categories;
    NSMutableArray *_articlesList;
    //key - category type, value - NSArray of ArticlesInfo
    NSDictionary *_articlesMap;

    CategoryInfo *_currentCategory;
}


/*
 * Properties
 */

- (NSArray *)categories
{
    return _categories;
}

- (NSArray *)articlesList
{
    return _articlesList;
}


/*
 * Methods
 */

- (id)init
{
    self = [super init];

    if (self != nil)
    {
        [self _initCategories];
        [self _initArticles];
    }

    return self;
}

- (void)_initCategories
{
    _categories = [[NSMutableArray alloc] init];

    CategoryInfo *categoryInfo = [[CategoryInfo alloc] init];

    [_categories addObject:categoryInfo];
}

- (void)_initArticles
{
    _articlesMap = [NSMutableDictionary dictionary];
    _articlesList = [NSMutableArray array];

    ArticleInfo *acticle = [[ArticleInfo alloc] init];

    [_articlesList addObject:acticle];
    [_articlesList addObject:acticle];
    [_articlesList addObject:acticle];
    [_articlesList addObject:acticle];
    [_articlesList addObject:acticle];
}

- (NSArray *)getArticlesForCategory:(int)type
{
    //todo:implement
    return [NSArray array];
}


@end