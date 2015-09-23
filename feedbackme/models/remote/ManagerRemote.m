//
// Created by Gregory Tkach on 9/19/15.
// Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import <AFNetworking/AFHTTPRequestOperationManager.h>
#import "ManagerRemote.h"


typedef void (^CALLBACK_RESPONSE_OK)(AFHTTPRequestOperation *operation, id responseObject);

typedef void (^CALLBACK_RESPONSE_ERROR)(AFHTTPRequestOperation *operation, NSError *error);

//todo:review and remove
typedef NSURL *(^CALLBACK_DATA_DESTINATION)(NSURL *targetPath, NSURLResponse *response);

typedef void (^CALLBACK_DATA_COMPLETE)(NSURLResponse *response, NSURL *filePath, NSError *error);

@implementation ManagerRemote
{
    AFHTTPRequestOperationManager *_managerRequests;
}

- (id)init
{
    self = [super init];

    if (self != nil)
    {
        _managerRequests = [AFHTTPRequestOperationManager manager];
    }

    return self;
}

- (void)sendRequest:(NSInteger)requestType onComplete:(CALLBACK_WITH_RESPONSE)onComplete
{
    [self sendRequest:requestType data:nil onComplete:onComplete onError:nil];
}

- (void)sendRequest:(NSInteger)requestType data:(id)data
{
    [self sendRequest:requestType data:data onComplete:nil onError:nil];
}

- (void)sendRequest:(NSInteger)requestType data:(id)data onComplete:(CALLBACK_WITH_RESPONSE)onComplete
{
    [self sendRequest:requestType data:data onComplete:onComplete onError:nil];
}

- (void)sendRequest:(NSInteger)requestType data:(id)data onComplete:(CALLBACK_WITH_RESPONSE)onComplete onError:(CALLBACK_WITH_RESPONSE)onError
{
    CALLBACK_RESPONSE_OK callbackOk = ^(AFHTTPRequestOperation *operation, id responseObject)
    {
        NSDictionary * response = (NSDictionary *) responseObject;

        if ([self _isResponseError:response])
        {
            if (onError != nil)
            {
                onError(response);
            }
        }
        else if (onComplete != nil)
        {
            onComplete(response);
        }

        NSLog(@"JSON: %@", responseObject);
    };

    CALLBACK_RESPONSE_ERROR callbackError = ^(AFHTTPRequestOperation *operation, NSError *error)
    {
        NSDictionary * response = @{@"status" : @"error", @"response" : error.description};

        if (onError != nil)
        {
            onError(response);
        }

        NSLog(@"Error: %@", error);
    };

    //todo:build url

    NSString * url = @"https://api.fixer.io/latest";

    [_managerRequests GET:url parameters:nil success:callbackOk failure:callbackError];
}

- (BOOL)_isResponseError:(NSDictionary *)jsonData
{
    NSString * status = jsonData[@"status"];

    return status == nil || [status isEqualToString:@"error"];
}

//- (void)downloadImageFrom:(NSString *)urlImage to:(UIImage *)image
//{
//    [_managerDownload setI]
//    - (void)setImageWithURL:(NSURL *)url
//    placeholderImage:(nullable UIImage *)placeholderImage;
//}
//
//
//- (void)downloadImageFrom:(NSString *)urlImage callback:(CALLBACK_WITH_IMAGE)callback
//{
//    CALLBACK_DATA_DESTINATION callbackDestination = ^NSURL *(NSURL *targetPath, NSURLResponse *response)
//    {
//        NSURL * documentsDirectoryURL = [[NSFileManager defaultManager] URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
//        return [documentsDirectoryURL URLByAppendingPathComponent:[response suggestedFilename]];
//    };
//
//    CALLBACK_DATA_COMPLETE callbackComplete = ^(NSURLResponse *response, NSURL *filePath, NSError *error)
//    {
//        NSLog(@"File downloaded to: %@", filePath);
//    };
//
//    NSURL * url = [NSURL URLWithString:urlImage];
//    NSURLRequest * request = [NSURLRequest requestWithURL:url];
//
//    NSURLSessionDownloadTask *downloadTask = [_managerDownload downloadTaskWithRequest:request progress:nil destination:callbackDestination completionHandler:callbackComplete];
//
//    [downloadTask resume];
//}


@end