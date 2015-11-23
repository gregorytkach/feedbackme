//
//  ControllerTableArticles.h
//  feedbackme
//
//  Created by Казанцев Алексей on 9/19/15.
//  Copyright (c) 2015 Казанцев Алексей. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ControllerTableArticles.h"

@interface ControllerTableArticles : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITableView *controllerArticles;
}
@property (nonatomic, strong) NSString* categoryName;


@end
