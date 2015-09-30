//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import <AFNetworking/UIImageView+AFNetworking.h>
#import "ControllerArticle.h"
#import "ArticleInfo.h"


@implementation ControllerArticle {
    ArticleInfo *_currentArticle;

}

- (void)viewDidLoad {
    [super viewDidLoad];

    //todo:remove this stub
    _currentArticle = [[ArticleInfo alloc] init];


    currentTitle.text = _currentArticle.title;

    [currentImage setImageWithURL:[NSURL URLWithString:_currentArticle.urlImage]];

    currentText.text = _currentArticle.text;

    currentQuestion.text = _currentArticle.question;

    [self initAnswerButton];

}


- (void)action {

}

- (void)initAnswerButton {

    int y = 450;

    for (int i = 0; i < _currentArticle.answers.count; i++) {
        UIButton *answerKey = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [answerKey addTarget:self
                      action:@selector(action:)
            forControlEvents:UIControlEventTouchUpInside];
        [answerKey setTitle:_currentArticle.answers[i] forState:UIControlStateNormal];
        answerKey.frame = CGRectMake(80.0, y, 160.0, 22.0);
        [answerKey setBackgroundColor:[UIColor blueColor]];
        [answerKey setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

        [self.view addSubview:answerKey];
        y += 27;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
