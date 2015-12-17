//
//  TopSideViewController.m
//  feedbackme
//
//  Created by Казанцев Алексей on 12/11/15.
//  Copyright © 2015 Казанцев Алексей. All rights reserved.
//

#import "TopSideViewController.h"
#import "ArticleInfo.h"
#import "FXBlurView.h"
#import <AFNetworking/UIImageView+AFNetworking.h>


@interface TopSideViewController ()

@end

@implementation TopSideViewController
{
    ArticleInfo *_currentArticle;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    //todo:remove this stub
    _currentArticle = [[ArticleInfo alloc] init];
    
    _nameInArticle.text = _currentArticle.title;
    
    //todo: add callback
    [_imageInArticle setImageWithURL:[NSURL URLWithString:_currentArticle.urlImage]];
    
    _textInArticle.text = _currentArticle.text;
    _textInArticle.font = [UIFont fontWithName:@"HelveticaNeue" size:15];
    _textInArticle.textColor = [UIColor whiteColor];
    _textInArticle.lineBreakMode = NSLineBreakByWordWrapping;
    _textInArticle.backgroundColor = [UIColor blackColor];
    
    
    _categoryInArticle.text = [_currentArticle categoryType];
    
    
    _categoryInArticle.backgroundColor = [UIColor purpleColor];
    
    //todo: check after set callback
    [self performSelector:@selector(addBlurLayer) withObject:nil afterDelay:1.f];
    
}

- (void)addBlurLayer
{
    FXBlurView * blurEffect = [[FXBlurView alloc] initWithFrame:CGRectMake(0, 200, 500, 90)];
    blurEffect.tintColor = [UIColor blackColor];
    blurEffect.updateInterval = 1;
    blurEffect.blurRadius = 4.f;
    blurEffect.dynamic = NO;
    
    [_imageInArticle addSubview:blurEffect];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


//todo: review
- (void)initAnswerButton
{
    
    int y = 450;
    
    for (NSUInteger i = 0; i < _currentArticle.answers.count; i++)
    {
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
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
