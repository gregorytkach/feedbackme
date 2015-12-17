//
//  ViewCellWithImage.h
//  feedbackme
//
//  Created by Казанцев Алексей on 9/19/15.
//  Copyright (c) 2015 Казанцев Алексей. All rights reserved.
//

#import "ControllerCellBase.h"
#import <UIKit/UIKit.h>
#import "ArticleInfo.h"


@interface ControllerCellArticle : ControllerCellBase

/*
 * Properties
 */

@property(strong) ArticleInfo *entity;

@property (weak, nonatomic) IBOutlet UIImageView *imageArticle;
@property (weak, nonatomic) IBOutlet UILabel *nameArticle;
@property (weak, nonatomic) IBOutlet UIImageView *sepatatorLineArticle;


/*
 * Methods
 */

- (void)awakeFromNib;
- (void)addBlurLayer;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;

@end
