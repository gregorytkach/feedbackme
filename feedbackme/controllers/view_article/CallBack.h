//
// Created by Voitenko Daniil on 23.09.15.
// Copyright (c) 2015 Voitenko Daniil. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CallBack : NSObject

id delegate;
}
- (void)setDelegate:(id)delegate;

- (void)doSomething;
@end