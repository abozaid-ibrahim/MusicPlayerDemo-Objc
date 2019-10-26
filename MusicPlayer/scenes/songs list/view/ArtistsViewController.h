//
//  ArtistsViewController.h
//  MusicPlayer
//
//  Created by abuzeid on 10/21/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ArtistsViewModel.h"
#import "ArtistsListViewModel.h"
//@protocol ArtistsViewModel
//@import UIKI
//@class ArtistsListViewModel;

@interface ArtistsViewController : UIViewController
//@property (strong,nonatomic) id<ArtistsViewModel> viewModel;
//-(instancetype)initWithViewModel:(NSObject<ArtistsViewModel>*)viewModel;
-(instancetype)initWithViewModel:(ArtistsListViewModel*)viewModel;

@end

