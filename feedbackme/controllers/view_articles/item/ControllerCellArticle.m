//
//  ViewCellWithImage.m
//  feedbackme
//
//  Created by Казанцев Алексей on 9/19/15.
//  Copyright (c) 2015 Казанцев Алексей. All rights reserved.
//

#import "ControllerCellArticle.h"

@implementation ControllerCellArticle
{
    ArticleInfo *_entity;
}

/*
 * Methods
 */

- (void)awakeFromNib
{
    // Initialization code

    UILabel *titleNameLabel = (UILabel *) [[self contentView] viewWithTag:3];
    titleNameLabel.text = _entity.title;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
