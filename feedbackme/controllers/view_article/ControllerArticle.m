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


    currentText.text = _currentArticle.text;

    [currentImage setImageWithURL:[NSURL URLWithString:_currentArticle.urlImage]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)createVoteButtons:(id)o {

    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button addTarget:self
               action:@selector(createVoteButtons:)
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Show View" forState:UIControlStateNormal];
    button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    for (int i; i < sizeof(_currentArticle.answers); i++) {
        [self.view addSubview:button];
    }
}

@end
