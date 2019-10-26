//
//  APIRequestBuilder.m
//  MusicPlayer
//
//  Created by abuzeid on 10/22/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#import "APIRequestBuilder.h"
@interface APIRequestBuilder()
@end

@implementation APIRequestBuilder
-(instancetype)init:(NSString*) path method: (NSString*)httpMethod{
    if (self = [super init]) {
        _path = path;
        _method = httpMethod;
    }
    return self;
}
@end
