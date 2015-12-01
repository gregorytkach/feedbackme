//
//  ControllerCellCategory.m
//  feedbackme
//
//  Created by Казанцев Алексей on 11/11/15.
//  Copyright © 2015 Казанцев Алексей. All rights reserved.
//

#import "ControllerCellCategory.h"

@implementation ControllerCellCategory
{
    CategoryInfo *_entity;
}

- (void)awakeFromNib
{

//    _nameCategory.text = _entity.type;
    
    _nameCategory.font = [UIFont fontWithName:@"Menlo-Bold" size:18];
    _nameCategory.textColor = [UIColor whiteColor];
    _nameCategory.backgroundColor = [UIColor purpleColor];
    
    _sepatatorLine.backgroundColor = _nameCategory.backgroundColor;
    
    UIBlurEffect * blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    UIVisualEffectView * visualEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    visualEffectView.frame = CGRectMake(0, 0, _imageBlur.bounds.size.width, _imageBlur.bounds.size.height);
    [_imageBlur addSubview:visualEffectView];
    
    
}

-(void)addBlurLayer
{

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
