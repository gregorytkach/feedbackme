//
//  ControllerCellCategory.h
//  feedbackme
//
//  Created by Казанцев Алексей on 11/11/15.
//  Copyright © 2015 Казанцев Алексей. All rights reserved.
//

#import "ControllerCellBase.h"
#import "CategoryInfo.h"
#import "FXBlurView.h"



@interface ControllerCellCategory : ControllerCellBase

/*
 * Properties
 */

@property(strong) CategoryInfo *entity;

@property (weak, nonatomic) IBOutlet UIImageView *imageCategory;
@property (weak, nonatomic) IBOutlet UILabel *nameCategory;
@property (weak, nonatomic) IBOutlet UIImageView *sepatatorLine;



/*
 * Methods
 */

- (void)awakeFromNib;
- (void)addBlurLayer;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;

@end
