//
//  TopSideViewController.h
//  feedbackme
//
//  Created by Казанцев Алексей on 12/11/15.
//  Copyright © 2015 Казанцев Алексей. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TopSideViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageInArticle;
@property (weak, nonatomic) IBOutlet UILabel *categoryInArticle;
@property (weak, nonatomic) IBOutlet UILabel *timerInArticle;
@property (weak, nonatomic) IBOutlet UILabel *nameInArticle;
@property (weak, nonatomic) IBOutlet UILabel *textInArticle;
@property (weak, nonatomic) IBOutlet UIImageView *sepatarorInArticle;


- (void)initAnswerButton;


@end
