//
//  AlbumsViewController.m
//  MusicPlayer
//
//  Created by abuzeid on 10/26/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#import "AlbumsViewController.h"
#import "CollectionCell.h"

@interface AlbumsViewController ()

@end

@implementation AlbumsViewController


static NSString * const reuseIdentifier = @"CollectionCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureCell];
}

-(void)configureCell{
    
    self.collectionView.dataSource = self;
    // Register cell classes
    UINib *nib = [UINib nibWithNibName:reuseIdentifier bundle:nil];
    [self.collectionView registerNib:nib forCellWithReuseIdentifier:reuseIdentifier];
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    
    return cell;
}
@end
