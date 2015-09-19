//
//  main.m
//  feedbackme
//
//  Created by Gregory Tkach on 9/19/15.
//  Copyright (c) 2015 Gregory Tkach. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "AppInfo.h"


int main(int argc, char *argv[])
{
    @autoreleasepool
    {
        //app info initialization
        [AppInfo instance];

        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }

}