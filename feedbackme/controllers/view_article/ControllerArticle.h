//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface ControllerArticle : UIViewController {

    IBOutlet UILabel *currentTitle;
    IBOutlet UIImageView *currentImage;
    IBOutlet UILabel *currentText;
    IBOutlet UILabel *currentQuestion;
}


- (void)createVoteButtons:(id)o;

@end