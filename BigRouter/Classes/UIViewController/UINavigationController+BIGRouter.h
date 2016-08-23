//
//  UINavigationController+BIGRouter.h
//  Pods
//
//  Created by Vincil Bishop on 5/13/16.
//
//

#import <UIKit/UIKit.h>
#import "BIGUtil.h"

@interface UINavigationController (BIGRouter)

/**
 *  Pushes a route on the navigation controller instance.
 *
 *  @param route The route string.
 */
- (void) BIG_pushRoute:(NSString*)route;

- (void) BIG_pushRoute:(NSString*)route beforeCompletion:(BIG_STRONG_BLOCK(UINavigationController*))beforeCompletion;

/**
 *  Pushes a route on the navigation controller instance.
 *
 *  @param route The route string.
 *  @param flag       A Boolean for animation.
 *  @param completion A completion block to be run when the animation ends.
 */
- (void) BIG_pushRoute:(NSString*)route animated:(BOOL)flag completion:(void (^)(void))completion;

@end