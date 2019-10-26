//
//  NSString+URL.m
//  MusicPlayer
//
//  Created by abuzeid on 10/22/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#import "NSString+URL.h"

#import "APIConstants.h"

@implementation NSString (URL)
-(NSURL*)backEndUrl{
    return [NSURL URLWithString:[NSString stringWithFormat:@"%@%@",[APIConstants baseUrl], self]];
}
@end
