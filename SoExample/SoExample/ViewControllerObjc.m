//
//  ViewControllerObjc.m
//  SoExample
//
//  Created by aurel on 20/02/2016.
//  Copyright © 2016 SoCrowd. All rights reserved.
//

#import "ViewControllerObjc.h"

@import SoCrowd;


@interface ViewControllerObjc ()

@end


@implementation ViewControllerObjc

- (void)showSocrowd {
    [SoCrowd.instance displayFullscreenWithPauseCb:
    ^{
        NSLog(@"Pausing my app videos, sounds, animations...");
    }
    unpauseCb:^{
        NSLog(@"Unpausing my app videos, sounds, animations...");
    }
    continueCb:^(NSString * _Nonnull result) {
        NSLog(@"Result of SoCrowd display: %@", result);
        NSLog(@"Continuing my app..");
    }];
}


- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];

    // Optional preloading to reduce visible wait time
    // [SoCrowd.instance preload]

    [self showSocrowd];
}


@end
