//
//  ViewCellWithImage.h
//  feedbackme
//
//  Created by Казанцев Алексей on 9/19/15.
//  Copyright (c) 2015 Казанцев Алексей. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ArticleInfo.h"


@interface ControllerCellArticle : UITableViewCell

/*
 * Properties
 */

@property(strong) ArticleInfo *entity;
@property (weak, nonatomic) IBOutlet UIImageView *imageArticle;
@property (weak, nonatomic) IBOutlet UILabel *nameArticle;


/*
 * Methods
 */

- (void)awakeFromNib;

- (void)setSelected:(BOOL)selected animated:(BOOL)animated;

@end
