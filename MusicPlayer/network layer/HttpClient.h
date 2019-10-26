//
//  HttpClient.h
//  MusicPlayer
//
//  Created by abuzeid on 10/21/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#ifndef HttpClient_h
#define HttpClient_h

#endif

/* HttpClient_h */
typedef void (^CompletionHandler)(id _Nullable results, NSError * _Nullable error);


@class APIRequestBuilder;

@protocol HttpClient
-(void)makeRequest:(APIRequestBuilder*_Nonnull)request onComplete: (CompletionHandler _Nonnull) complete;
@end





