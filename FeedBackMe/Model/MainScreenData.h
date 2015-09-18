//
// Created by Voitenko Daniil on 14.09.15.
// Copyright (c) 2015 hi5. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MainScreenData : NSObject

@property (nonatomic, readonly) NSString *title, *picURL, *mainText, *voteField, *liker;

- (id)initWithTitle:(NSString *)title
             picURL:(NSString *)picURL
           mainText:(NSString *)mainText
          voteField:(NSArray *)voteField
              liker:(NSArray *)liker;
//some comment

@end