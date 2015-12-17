//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import "ArticleInfo.h"
#import "AnswerInfo.h"


@implementation ArticleInfo
{
    NSMutableArray *_answers;

    NSString *_categoryType;
}

/*
 * Properties
 */

- (NSString *)id
{
    return @"some id";
}

- (NSString *)title
{
    return @"some title";
}

- (NSString *)urlImage
{
    return @"https://upload.wikimedia.org/wikipedia/en/1/14/Listen_Doctor_Who.jpg";
}

- (NSString *)text
{
    return @"Доктор Кто» (англ. Doctor Who, МФА: [ˈdɒk.tə(ɹ) huː]) — культовый британский научно-фантастический телесериал компании «Би-би-си» об инопланетном путешественнике во времени, известном как Доктор..\n"
            "left eight chars.";
}

- (NSString *)question
{
    return @"Some Question";
}

- (NSArray *)answers
{
    return _answers;
}

- (NSString *)categoryType
{
    return _categoryType;
}

- (void)setCategoryType:(NSString *)value
{
    _categoryType = value;
}


/*
 * Methods
 */

//! Default initializer
- (id)init
{
    self = [super init];

    if (self != nil)
    {
        _answers = [[NSMutableArray alloc] init];

        for (int i = 0; i < 3; i++)
        {
            [_answers addObject:[[AnswerInfo alloc] init]];
        }
    }

    return self;
}

- (void)deserialize:(id)data
{
    //todo: implement
}

@end