//
//  ControllerCellCategory.m
//  feedbackme
//
//  Created by Казанцев Алексей on 11/11/15.
//  Copyright © 2015 Казанцев Алексей. All rights reserved.
//

#import "ControllerCellCategory.h"
#import "FXBlurView.h"

@implementation ControllerCellCategory
{
    CategoryInfo *_entity;
}

- (void)awakeFromNib
{
    [super awakeFromNib];

//    _nameCategory.text = _entity.type;
    
// remove after set
    _nameCategory.text = @"veeeeeeryyyyy loooooooooong teeeeeeext";
    
    _nameCategory.font = [UIFont fontWithName:@"HelveticaNeue" size:10];
    
    NSString *uppercase = [_nameCategory.text uppercaseString];
    _nameCategory.text =  uppercase;
    _nameCategory.textColor = [UIColor whiteColor];
    
//todo: set correct color
    _nameCategory.backgroundColor = [UIColor purpleColor];
    _sepatatorLine.backgroundColor = _nameCategory.backgroundColor;
    
    [self addBlurLayer];
}


- (void)addBlurLayer
{
    FXBlurView * blurEffect = [[FXBlurView alloc] initWithFrame:CGRectMake(0, 70, 500, 30)];
    blurEffect.tintColor = [UIColor clearColor];
    blurEffect.updateInterval = 1;
    blurEffect.blurRadius = 4.f;
    blurEffect.dynamic = NO;
    [_imageCategory addSubview:blurEffect];
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
