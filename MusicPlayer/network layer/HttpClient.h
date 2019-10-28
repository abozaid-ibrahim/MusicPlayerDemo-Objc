//
//  HttpClient.h
//  MusicPlayer
//
//  Created by abuzeid on 10/21/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

/* HttpClient_h */
typedef void (^CompletionHandler)(id _Nullable results, NSError * _Nullable error);


@class APIRequestBuilder;

@protocol HttpClient
-(void)makeRequest:(APIRequestBuilder*_Nonnull)request onComplete: (CompletionHandler _Nonnull) complete;
@end





@interface Result<A> : NSObject

- (void)handleSuccess:(void(^)(A))success
              failure:(void(^)(NSError *))failure;

@property (nonatomic) A object;

@end
