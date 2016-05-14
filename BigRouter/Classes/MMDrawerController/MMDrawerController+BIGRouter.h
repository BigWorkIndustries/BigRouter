//
//  MMDrawerController+BIGRouter.h
//  Pods
//
//  Created by Vincil Bishop on 5/13/16.
//
//

#import <MMDrawerController/MMDrawerController.h>
#import "BigUtil.h"

@interface MMDrawerController (BIGRouter)

/**
 *  Sets the center view controller with the route, withCloseAnimation, no completion block.
 *
 *  @param route The route string.
 */
- (void) BIG_setCenterRoute:(NSString*)route;

/**
 *  Sets the center view controller with the route.
 *
 *  @param route         The route string.
 *  @param closeAnimated YES or NO
 *  @param completion    A block to be run when the animation completes.
 */
- (void) BIG_setCenterRoute:(NSString*)route withCloseAnimation:(BOOL)closeAnimated completion:(void(^)(BOOL finished))completion;

/**
 *  Sets the center view controller with the route.
 *
 *  @param route         The route string.
 *  @param closeAnimated YES or NO
 *  @param completion    A block to be run when the animation
 *  @param onCompletion  A block to be run by the view controller when it's operation is complete.
 */
- (void) BIG_setCenterRoute:(NSString*)route withCloseAnimation:(BOOL)closeAnimated completion:(void(^)(BOOL finished))completion onCompletion:(BIGCompletionBlock)onCompletion;

/**
 *  Sets the left view controller with the route.
 *
 *  @param route The route string.
 */
- (void) BIG_setLeftRoute:(NSString*)route;

/**
 *  Sets the right view controller with the route.
 *
 *  @param route The route string.
 */
- (void) BIG_setRightRoute:(NSString*)route;

@end
