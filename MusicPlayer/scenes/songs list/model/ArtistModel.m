//
//  ArtistModel.m
//  MusicPlayer
//
//  Created by abuzeid on 10/21/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#import "ArtistModel.h"

@implementation ArtistModel

-(instancetype)initWithDic:(NSDictionary*) dic {
    if (self = [super init]) {
        _userId = [dic valueForKey:@"user_id"];
        self.waveform_url = [dic valueForKey:@"waveform_url"];
        self.stream_url = [dic valueForKey:@"stream_url"];
        self.preview_url = [dic valueForKey:@"preview_url"];
    }
    return self;
}
@end
