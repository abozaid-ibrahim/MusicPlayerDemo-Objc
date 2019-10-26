//
//  ArtistsViewController.m
//  MusicPlayer
//
//  Created by abuzeid on 10/21/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#import "ArtistsViewController.h"
#import "ArtistsListViewModel.h"


#import "ArtistsViewModel.h"

@interface ArtistsViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UILabel *errorLbl;
@property (weak, nonatomic) IBOutlet UIView *errorContainerView;
@property (strong,nonatomic) ArtistsListViewModel* viewModel;

@property NSString *nameTxt;
@property void *context;

@end

@implementation ArtistsViewController
-(instancetype)initWithViewModel:(ArtistsListViewModel*)viewModel{
    
    
    if (self = [super init]) {
        self.viewModel = viewModel;
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [_viewModel loadData];
    [_viewModel addObserver:self forKeyPath:@"model" options:NSKeyValueObservingOptionNew context:_context];

    

}


- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary<NSString *,id> *)change
                       context:(void *)context
{
    NSLog(@"new value of %@ is: %@", keyPath, change[NSKeyValueChangeNewKey]);
}




@end

