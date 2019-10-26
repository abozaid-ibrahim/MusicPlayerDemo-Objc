//
//  APIRequestBuilder.h
//  MusicPlayer
//
//  Created by abuzeid on 10/22/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface APIRequestBuilder : NSObject
@property NSDictionary* params;
@property (strong, nonatomic) NSString* path;
@property (strong, nonatomic) NSString* method;

-(instancetype)init:(NSString*) path method: (NSString*)httpMethod;
@end

NS_ASSUME_NONNULL_END
