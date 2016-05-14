//
//  BIGRouter+MMDrawerController.m
//  Pods
//
//  Created by Vincil Bishop on 5/13/16.
//
//

#import "BIGRouter+MMDrawerController.h"
#import "BigUtil.h"

@interface BIGRouter ()

/**
 *  An MMDrawerController instance for convenience.
 */
@property MMDrawerController *drawerController;

@end

static MMDrawerController *_drawerController;

@implementation BIGRouter (MMDrawerController)

- (MMDrawerController*) drawerController
{
    return _drawerController;
}

- (void) setDrawerController:(MMDrawerController*)drawerController
{
    _drawerController = drawerController;
}


- (void) configureDrawerController:(BIG_STRONG_BLOCK(MMDrawerController*,drawerController))configBlock
{
    self.drawerController = [[MMDrawerController alloc] init];
    
    if (configBlock) {
        configBlock(self.drawerController);
    }
}

@end
