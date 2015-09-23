//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import <AFNetworking/UIImageView+AFNetworking.h>
#import "ControllerArticle.h"
#import "ArticleInfo.h"
#import "AppInfo.h"
#import "ManagerRemote.h"


@implementation ControllerArticle 
{
    ArticleInfo *_currentArticle;

}

- (void)viewDidLoad {
    [super viewDidLoad];

    //todo:remove this stub
    _currentArticle = [[ArticleInfo alloc] init];

    currentTitle.text = _currentArticle.title;

    NSString *urlImage = @"http://cs9542.vk.me/u78598353/a_1e6147a8.jpg";

    //todo:setup callback
    [AppInfo.instance.managerRemote downloadImageFrom:urlImage callback:nil];

//    currentImage.image 

    currentText.text = _currentArticle.text;

    [currentImage setImageWithURL:[NSURL URLWithString:_currentArticle.urlImage]];
}

- (void)didReceiveMemoryWarning 
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
