//
//  ArtistModel.h
//  MusicPlayer
//
//  Created by abuzeid on 10/21/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ArtistModel : NSObject
@property NSString* songId;
@property NSString* userId;
@property NSString* waveform_url;
@property NSString* stream_url;
@property NSString* preview_url;
-(instancetype)initWithDic:(NSDictionary*) dic;
@end

NS_ASSUME_NONNULL_END

