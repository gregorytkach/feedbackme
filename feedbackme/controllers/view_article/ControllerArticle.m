//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import "ControllerArticle.h"
#import "ArticleInfo.h"



@implementation ControllerArticle {
    
    ArticleInfo *_currentArticle;
    
}


- (void)viewDidLoad {
    [super viewDidLoad];


    _currentArticle = [[ArticleInfo alloc] init];

    currentTitle.text = _currentArticle.title;

    //currentImage.image =

    currentText.text = _currentArticle.text;
    
    currentQuestion.text = _currentArticle.question;
    

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end