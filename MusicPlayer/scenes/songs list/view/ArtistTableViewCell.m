//
//  ArtistTableViewCell.m
//  MusicPlayer
//
//  Created by abuzeid on 10/21/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#import "ArtistTableViewCell.h"
#import "ArtistsViewController.h"
@implementation ArtistTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    ArtistsViewController *vc  = [ArtistsViewController new];
    
    // Configure the view for the selected state
}

@end
