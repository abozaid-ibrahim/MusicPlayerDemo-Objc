//
//  NSString+URL.h
//  MusicPlayer
//
//  Created by abuzeid on 10/22/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//



#import <Foundation/Foundation.h>
// It's a convenience macro to save you typing nonnull in your headers.
NS_ASSUME_NONNULL_BEGIN

@interface NSString (URL)
-(NSURL*)backEndUrl;
@end

NS_ASSUME_NONNULL_END
