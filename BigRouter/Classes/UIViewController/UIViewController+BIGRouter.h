//
//  UIViewController+BIGRouter.h
//  Pods
//
//  Created by Vincil Bishop on 5/13/16.
//
//

#import <UIKit/UIKit.h>
#import "BIGUtil.h"

@interface UIViewController (BIGRouter)

/**
 *  Maps a route to this view controller from the main storyboard,
 *
 *  @param route The route string.
 */
+ (void) BIG_mapRoute:(NSString*)route;

/**
*  Maps a route to this view controller from the main storyboard with a block to be executed.
 *
 *  @param route      The route string.
 *  @param block      The block to be executed before the route is returned.
 */
+ (void) BIG_mapRoute:(NSString*)route toBlock:(id(^)(NSDictionary *params,UIViewController *controller))block;

/**
 *  Maps a route to this view controller from the storyboard.
 *
 *  @param route      The route string.
 *  @param storyboard The storyboard the view controller belongs to.
 */
+ (void) BIG_mapRoute:(NSString*)route fromStoryboard:(UIStoryboard*)storyboard;

/**
 *  Maps a route to this view controller from the storyboard, with a block to be executed.
 *
 *  @param route      The route string.
 *  @param storyboard The storyboard the view controller belongs to.
 *  @param block      The block to be executed before the route is returned.
 */
+ (void) BIG_mapRoute:(NSString*)route fromStoryboard:(UIStoryboard*)storyboard toBlock:(id(^)(NSDictionary *params,UIViewController *controller))block;

/**
 *  Presents the route from this view controller instance.
 *
 *  @param route The route string.
 */
- (void) BIG_presentRoute:(NSString*)route;

/**
 *  Presents the route from this view controller instance.
 *
 *  @param route The route string.
 *  @param flag       A Boolean for animation.
 *  @param completion A block to be run on completion.
 */
- (void) BIG_presentRoute:(NSString*)route animated:(BOOL)flag completion:(void (^)(void))completion;

/**
 *  Presents the route from this view controller instance.
 *
 *  @param route The route string.
 *  @param flag       A Boolean for animation.
 *  @param completion A block to be run on completion.
 *  @param beforeCompletion A block to be run before the view controller's operation has completed.
 *  @param onCompletion A block to be run after the view controller's operation has completed.
 */
- (void) BIG_presentRoute:(NSString*)route animated:(BOOL)flag completion:(void (^)(void))completion beforeCompletion:(BIG_STRONG_BLOCK(UIViewController*))beforeCompletion onCompletion:(BIGCompletionBlock)onCompletion;

@end
