//
//  ArtistsViewModel.h
//  MusicPlayer
//
//  Created by abuzeid on 10/21/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#import <UIKit/UIKit.h>


@class ArtistModel;

@protocol ArtistsViewModel <NSObject>
-(void)loadData;
-(void)playSong:(void (^_Nullable)(ArtistModel* test) )onComplete;
@end

