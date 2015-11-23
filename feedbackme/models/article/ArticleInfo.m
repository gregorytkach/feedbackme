//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import "ArticleInfo.h"
#import "AnswerInfo.h"


@implementation ArticleInfo
{
    NSMutableArray *_answers;
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
    return @"https://pp.vk.me/c625317/v625317639/49e64/GFd_A2u60GI.jpg";
}

- (NSString *)text
{
    return @"Доктор Кто» (англ. Doctor Who, МФА: [ˈdɒk.tə(ɹ) huː]) — культовый британский научно-фантастический телесериал компании «Би-би-си» об инопланетном путешественнике во времени, известном как Доктор. Вместе со своими спутниками он путешествует во времени и пространстве как для спасения целых цивилизаций, так и для собственного удовольствия.Доктор Кто» — самый продолжительный научно-фантастический сериал в мире, важная часть массовой культуры Великобритании и многих других стран.\n"
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


@end