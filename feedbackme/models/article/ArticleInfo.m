//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import "ArticleInfo.h"


@implementation ArticleInfo
{

}

- (NSString *)id
{
    return nil;
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
    return @"Доктор Кто» (англ. Doctor Who, МФА: [ˈdɒk.tə(ɹ) huː]) — культовыйбританский научно-фантастический телесериал компании «Би-би-си» об инопланетном путешественнике во времени, известном как Доктор[1]. Вместе со своими спутниками он путешествует во времени и пространстве как для спасения целых цивилизаций, так и для собственного удовольствия.Доктор Кто» — самый продолжительный научно-фантастический сериал в мире, важная часть массовой культуры Великобритании и многих других стран.\n"
            "left eight chars.";
}

- (NSString *)question
{
    return nil;
}

- (NSArray *)answers
{
    if (!self)
    {
        NSMutableArray * arrayWithAnswers = [[NSMutableArray alloc] init];
        
        for (int i;i<3;i++)
        {
            NSString *value = [NSString stringWithFormat:@"%i", i];
            [arrayWithAnswers addObject: value];
        }
    }
    
    return self;
}


@end