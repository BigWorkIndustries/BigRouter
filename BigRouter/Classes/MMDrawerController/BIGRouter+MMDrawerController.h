//
//  BIGRouter+MMDrawerController.h
//  Pods
//
//  Created by Vincil Bishop on 5/13/16.
//
//

#import <BigRouter/BigRouter.h>
#import <MMDrawerController/MMDrawerController.h>
#import "MMDrawerController+BIGRouter.h"

@interface BIGRouter (MMDrawerController)

- (MMDrawerController*) drawerController;

/**
 *  A method for configuring the MMDRawerController. Automatically instantiates and instance and assignes it to drawerController.
 *
 *  @param configBlock A block to which the instantiated instance is passed. The instance can be configured in this block.
 */
- (void) configureDrawerController:(BIG_STRONG_BLOCK(MMDrawerController*))configBlock;

@end
