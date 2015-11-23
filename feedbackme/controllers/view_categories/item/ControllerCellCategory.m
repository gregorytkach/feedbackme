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
    // Initialization code

    UILabel *titleNameLabel = (UILabel *) [[self contentView] viewWithTag:1];
    titleNameLabel.text = _entity.type;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
