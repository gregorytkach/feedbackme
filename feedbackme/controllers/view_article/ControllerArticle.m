//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import "ControllerArticle.h"
#import "ArticleInfo.h"


@implementation ControllerArticle {
    ArticleInfo *_currentArticle;

}

- (UIImage *)downloadURLImage {
    NSURL *url = [NSURL URLWithString:@"http://cs9542.vk.me/u78598353/a_1e6147a8.jpg"];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *result = [[UIImage alloc] initWithData:data];

    return result;
}


- (void)viewDidLoad {
    [super viewDidLoad];

    //todo:remove this stub
    _currentArticle = [[ArticleInfo alloc] init];

    currentTitle.text = _currentArticle.title;
    //todo:finish it
    //  currentImage.images = _currentArticle.urlImage;
    currentImage.image = [self downloadURLImage];


    currentText.text = _currentArticle.text;

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end