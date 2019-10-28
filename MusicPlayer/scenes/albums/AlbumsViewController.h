//
//  AlbumsViewController.h
//  MusicPlayer
//
//  Created by abuzeid on 10/26/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AlbumsViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

NS_ASSUME_NONNULL_END
