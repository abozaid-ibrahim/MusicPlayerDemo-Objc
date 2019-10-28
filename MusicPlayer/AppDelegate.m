//
//  AppDelegate.m
//  MusicPlayer
//
//  Created by abuzeid on 10/21/19.
//  Copyright © 2019 abuzeid. All rights reserved.
//

#import "AppDelegate.h"
#import "ArtistsViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    [self setRootController];
    return YES;
}
-(void)setRootController{
    [self setWindow:[[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds]];
    UIViewController *mainController = [[ArtistsViewController alloc] initWithViewModel:[ArtistsListViewModel new]];
    
    UINavigationController *root = [[UINavigationController alloc] initWithRootViewController:mainController];
    [self.window setRootViewController:root];
    [self.window makeKeyAndVisible];
    
//    [self testBlock];
    
}

//- (void)testBlock {
//    NSString *temp = [[NSString alloc] initWithString:@"temp"];
//    NSLog(@">a %d", temp.retainCount);
//    dispatch_async(dispatch_get_current_queue(), ^{
//        NSLog(@">b %d", temp.retainCont);//2
//        dispatch_async(dispatch_get_current_queue(), ^{
//            NSLog(@">%@", temp);//3
//            NSLog(@">c %d", temp.retainCount);//3
//        });
//        NSLog(@">d %d", temp.retainCount);
//    });
//       NSLog(@">e %d", temp.retainCount);
//}



@end
