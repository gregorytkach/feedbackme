//
//  ViewCellWithImage.m
//  feedbackme
//
//  Created by Казанцев Алексей on 9/19/15.
//  Copyright (c) 2015 Казанцев Алексей. All rights reserved.
//

#import "ControllerCellArticle.h"
#import "FXBlurView.h"


@implementation ControllerCellArticle
{
    ArticleInfo *_entity;
}

/*
 * Methods
 */

- (void)awakeFromNib
{
    [super awakeFromNib];
//    _nameArticle.text = _entity.title;

// remove after set
    _nameArticle.text = @"and here very loooong text tooooooo";
    
    _nameArticle.font = [UIFont fontWithName:@"HelveticaNeue" size:10];
    NSString *uppercase = [_nameArticle.text uppercaseString];
    _nameArticle.text =  uppercase;
    _nameArticle.textColor = [UIColor whiteColor];
    
//todo: set correct color
    _nameArticle.backgroundColor = [UIColor purpleColor];
    _sepatatorLineArticle.backgroundColor = _nameArticle.backgroundColor;
    
    [self addBlurLayer];
}

- (void)addBlurLayer
{
    FXBlurView * blurEffect = [[FXBlurView alloc] initWithFrame:CGRectMake(0, 70, 500, 30)];
    blurEffect.tintColor = [UIColor clearColor];
    blurEffect.updateInterval = 1;
    blurEffect.blurRadius = 4.f;
    blurEffect.dynamic = NO;
    [_imageArticle addSubview:blurEffect];
}




- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
