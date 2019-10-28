//
//  ArtistsViewController.m
//  MusicPlayer
//
//  Created by abuzeid on 10/21/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#import "ArtistsViewController.h"
#import "ArtistsListViewModel.h"
#import "ArtistTableViewCell.h"
#import "ArtistsViewModel.h"
#import "AlbumsViewController.h"
//@class CollectionViewController



@interface ArtistsViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UILabel *errorLbl;
@property (weak, nonatomic) IBOutlet UIView *errorContainerView;
@property (strong,nonatomic) ArtistsListViewModel* viewModel;
@property NSMutableArray<ArtistModel*> *dataList;

@property NSString *nameTxt;
@end

@implementation ArtistsViewController

//@synthesize instanceVar;
static void * observerContext = &observerContext;
NSString *cellId = @"ArtistTableViewCell";
//It’s that simple: a static value that stores its own pointer. It means nothing on its own, which makes it rather perfect for <NSKeyValueObserving>:

-(instancetype)initWithViewModel:(ArtistsListViewModel*)viewModel{
    
    
    if (self = [super init]) {
        self.viewModel = viewModel;
        self.dataList = [NSMutableArray new];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTableView];
    
    //    [self ]
    //    [_instance]
    
    test = @"zezo";
    [self setTst:@"asdfa"];
    NSLog(@"%@,%@",[self tst],test);
    NSString* age  = @"asdfasdfsdaf";
    int  var;
    int  *ptr;
    
    
    @autoreleasepool {
        
        int  **pptr;
        
        var = 3000;
        
        /* take the address of var */
        ptr = &var;
        
        /* take the address of ptr using address of operator & */
        pptr = &ptr;
        
        /* take the value using pptr */
        NSLog(@"Value of var = %d\n", var );
        NSLog(@"Value available at *ptr = %d\n", *ptr );
        NSLog(@"Value available at **pptr = %d\n", **pptr);
        
    }
    
}

-(void)setupTableView{
    [self.tableView setDataSource:self];
    [self.tableView setDelegate:self];
    UINib* nib = [UINib nibWithNibName:cellId bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:cellId];
    [_viewModel addObserver:self forKeyPath:@"model" options:(NSKeyValueObservingOptionNew | NSKeyValueObservingOptionPrior | NSKeyValueObservingOptionNew) context:observerContext];
    [_viewModel loadData:^(NSArray * _Nonnull arr) {
        [self.dataList addObjectsFromArray:arr];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableView reloadData];
            
        });
    }];
}

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary<NSString *,id> *)change
                       context:(void *)context
{
    NSLog(@">>>new value of %@ is: %@", keyPath, change[NSKeyValueChangeNewKey]);
}



#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ArtistTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    [cell.titleLbl setText:[_dataList[indexPath.row] stream_url]];
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    id vc = [[AlbumsViewController alloc] initWithNibName:@"AlbumsViewController" bundle:nil];
    [self  presentViewController:vc animated:YES completion:nil];
}
@end

