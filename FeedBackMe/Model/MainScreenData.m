//
// Created by Voitenko Daniil on 14.09.15.
// Copyright (c) 2015 hi5. All rights reserved.
//

#import "MainScreenData.h"


@implementation MainScreenData

- (id)initWithTitle:(NSString *)title
             picURL:(NSString *)picURL
           mainText:(NSString *)mainText
          voteField:(NSArray *)voteField
              liker:(NSArray *)liker {

    self = super.init;
    if (self) {
        _title = title;
        _picURL = picURL;
        _mainText = mainText;
        _voteField = voteField;
        _liker = liker;
    }

    return self;
}

