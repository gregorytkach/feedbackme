//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import "ManagerArticles.h"
#import "ArticleInfo.h"
#import "CategoryInfo.h"
#import "ECategoryType.h"
#import "ECategorySortType.h"


@implementation ManagerArticles
{
    //key - category sort typem value NSArray of CategoryInfo
    NSMutableDictionary *_categoriesMap;
    NSMutableArray *_articlesList;

    //key - category type, value - NSArray of ArticlesInfo
    NSMutableDictionary *_articlesMap;

    CategoryInfo *_currentCategory;

    NSMutableArray *_sortTypesList;
}


/*
 * Properties
 */

- (NSMutableDictionary *)categoriesMap
{
    return _categoriesMap;
}

- (NSArray *)articlesList
{
    return _articlesList;
}

- (NSArray *)notEmptySortTypes
{
    NSMutableArray *result = [NSMutableArray array];

    for (NSString *sortType in _sortTypesList)
    {
        NSArray *categories = [self getCategoriesSortType:sortType];

        if (categories.count == 0)
        {
            continue;
        }

        BOOL isSortTypeEmpty = YES;

        for (CategoryInfo *categoryInfo in categories)
        {
            NSArray *articles = [self getArticlesForCategory:categoryInfo.type];

            if (articles.count > 0)
            {
                isSortTypeEmpty = NO;
                break;
            }

        }

        if (!isSortTypeEmpty)
        {
            [result addObject:sortType];
        }
    }

    return result;
}


/*
 * Methods
 */

- (id)init
{
    self = [super init];

    if (self != nil)
    {
        [self _initSortTypes];
        [self _initCategories];
        [self _initArticles];
    }

    return self;
}

- (void)_initSortTypes
{
    _sortTypesList = [NSMutableArray array];

    [_sortTypesList addObject:ECST_TOP];
    [_sortTypesList addObject:ECST_MY];
    [_sortTypesList addObject:ECST_SYSTEM];
    [_sortTypesList addObject:ECST_USERS];
}

- (void)_initCategories
{
    _categoriesMap = [NSMutableDictionary dictionary];

    [self _addCategory:ECT_BEST_TODAY sortType:ECST_TOP];

    [self _addCategory:ECT_CULTURE sortType:ECST_MY];
    [self _addCategory:ECT_POLITIC sortType:ECST_MY];
    [self _addCategory:ECT_ENTERTAINMENT sortType:ECST_SYSTEM];
}

- (void)_addCategory:(NSString *)type sortType:(NSString *)sortType
{
    CategoryInfo *categoryInfo = [[CategoryInfo alloc] init];

    categoryInfo.sortType = sortType;
    categoryInfo.type = type;

    NSMutableArray *categoriesList = _categoriesMap[sortType];

    if (categoriesList == nil)
    {
        categoriesList = [NSMutableArray array];
        _categoriesMap[sortType] = categoriesList;
    }

    [categoriesList addObject:categoryInfo];
}

- (void)_initArticles
{
    _articlesMap = [NSMutableDictionary dictionary];
    _articlesList = [NSMutableArray array];

    //todo:remove
    [self _initCategoriesWithType:ECT_BEST_TODAY count:2];
    [self _initCategoriesWithType:ECT_POLITIC count:3];
    [self _initCategoriesWithType:ECT_CULTURE count:1];
    [self _initCategoriesWithType:ECT_SOCIAL count:3];

    [self _updateCategoriesMap];
}

- (void)_initCategoriesWithType:(NSString *)type count:(NSUInteger)count
{
    for (int i = 0; i < count; i++)
    {
        ArticleInfo *article = [[ArticleInfo alloc] init];

        article.categoryType = type;

        [_articlesList addObject:article];
    }
}

- (void)_updateCategoriesMap
{
    for (ArticleInfo *article in _articlesList)
    {
        NSMutableArray *articlesWithType = _articlesMap[article.categoryType];

        if (articlesWithType == nil)
        {
            articlesWithType = [NSMutableArray array];
            _articlesMap[article.categoryType] = articlesWithType;
        }

        [articlesWithType addObject:article];
    }
}

- (CategoryInfo *)getCategory:(NSString *)sortType index:(NSInteger)index
{
    NSArray *categories = [self getCategoriesSortType:sortType];

    return categories[(NSUInteger) index];
}

- (NSArray *)getCategoriesSortType:(NSString *)type
{
    return [self _getArrayFrom:_categoriesMap key:type];
}

- (NSArray *)getArticlesForCategory:(NSString *)type
{
    return [self _getArrayFrom:_articlesMap key:type];
}

- (NSArray *)_getArrayFrom:(NSDictionary *)source key:(NSString *)key
{
    NSArray *result = source[key];

    if (result == nil)
    {
        result = [NSArray array];
    }

    return result;
}


@end