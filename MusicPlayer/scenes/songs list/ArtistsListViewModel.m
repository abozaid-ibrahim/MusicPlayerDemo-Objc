//
//  ArtistsListViewModel.m
//  MusicPlayer
//
//  Created by abuzeid on 10/21/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#import "ArtistsListViewModel.h"
#import "APIClient.h"
@interface ArtistsListViewModel()

@property APIClient* network;
@end
@implementation ArtistsListViewModel
-(instancetype)init {
    if (self = [super init]) {
        _network = [[APIClient alloc] init];
        self.model = [NSMutableArray new];
    }
    return self;
}


- (void)loadData:(void (^_Nullable)(NSArray* arr) )onComplete {
    APIRequestBuilder* feed = [[APIRequestBuilder alloc] init:@"feed" method:@"GET"];
    NSDictionary* prm = @{@"type":@"popular",@"page" : @1};
    [feed setParams:prm];
    [_network makeRequest:feed onComplete:^(id  _Nullable results, NSError * _Nullable error) {
        [self willChangeValueForKey:@"model"];
        
        
        for (NSDictionary* dic in results){
            ArtistModel* xx = [[ArtistModel alloc] initWithDic:dic];
            [self.model addObject: xx];
        }

           [self didChangeValueForKey:@"model"];
        
        onComplete(self.model);
    }];
}

- (void)playSong:(void (^ _Nullable)(ArtistModel *))onComplete {
    
}


@end
