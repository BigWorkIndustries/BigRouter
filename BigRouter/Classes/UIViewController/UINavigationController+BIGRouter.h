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

- (void) BIG_presentRoute:(NSString*)route beforeCompletion:(BIG_STRONG_BLOCK(id,controller))beforeCompletion;

- (void) BIG_pushRoute:(NSString*)route beforeCompletion:(BIG_STRONG_BLOCK(id,controller))beforeCompletion;

/**
 *  Pushes a route on the navigation controller instance.
 *
 *  @param route The route string.
 *  @param flag       A Boolean for animation.
 *  @param completion A completion block to be run when the animation ends.
 */
- (void) BIG_pushRoute:(NSString*)route animated:(BOOL)flag completion:(void (^)(void))completion;

/**
 *  Pushes a route on the navigation controller instance.
 *
 *  @param route The route string.
 *  @param flag       A Boolean for animation.
 *  @param completion A completion block to be run when the animation ends.
 *  @param onCompletion A block to be run when the view controller's operation completes.
 */
- (void) BIG_presentRoute:(NSString*)route animated:(BOOL)flag completion:(void (^)(void))completion beforeCompletion:(BIG_STRONG_BLOCK(id,controller))beforeCompletion onCompletion:(BIGCompletionBlock)onCompletion;

@end