//
//  APIClient.m
//  MusicPlayer
//
//  Created by abuzeid on 10/21/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#import "APIClient.h"
@class APIConstants;
#import "NSString+URL.h"
@implementation APIClient




/// build our request, then call api, then handle response
- (void)makeRequest:(APIRequestBuilder * _Nonnull)request onComplete:(CompletionHandler _Nonnull)complete {

    NSURLSessionDataTask *task = [NSURLSession.sharedSession dataTaskWithRequest:[self buildRequest:request] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
    NSError *jsonError = nil;
    id jsonObject = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonError];
        complete(jsonObject,jsonError);
    }];
    
    [task resume];
    
}

-(NSURLRequest*)buildRequest:(APIRequestBuilder * _Nonnull)request{
    NSURL *url =  request.path.backEndUrl;
    
    NSURLRequest* req = [NSURLRequest requestWithURL: url];
    NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:url];
    
    // Convert POST string parameters to data using UTF8 Encoding
    NSString *postParams = [request.params descriptionInStringsFileFormat];
    NSData *postData1 = [postParams dataUsingEncoding:NSUTF8StringEncoding];
    NSData *postData = [NSKeyedArchiver archivedDataWithRootObject:request.params];

    // Convert POST string parameters to data using UTF8 Encoding
    [urlRequest setHTTPMethod: request.method];
    [urlRequest setHTTPBody:postData];
    return req;
}


@end


