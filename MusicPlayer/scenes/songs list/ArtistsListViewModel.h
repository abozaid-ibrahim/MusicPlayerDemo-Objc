//
//  ArtistsListViewModel.h
//  MusicPlayer
//
//  Created by abuzeid on 10/21/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArtistsViewModel.h"
#import "ArtistModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface ArtistsListViewModel : NSObject  <ArtistsViewModel>
@property ArtistModel* model;
@end

NS_ASSUME_NONNULL_END
