//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import <AFNetworking/UIImageView+AFNetworking.h>
#import "ControllerArticle.h"
#import "ArticleInfo.h"


@implementation ControllerArticle
{
    ArticleInfo *_currentArticle;

}

- (void)viewDidLoad
{
    [super viewDidLoad];

    //todo:remove this stub
    _currentArticle = [[ArticleInfo alloc] init];

    currentTitle.text = _currentArticle.title;
    //todo:finish it
    //  currentImage.images = _currentArticle.urlImage;

    currentText.text = _currentArticle.text;

    [currentImage setImageWithURL:[NSURL URLWithString:_currentArticle.urlImage]];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end