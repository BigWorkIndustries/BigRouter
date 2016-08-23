//
//  BIGRouter.h
//  Pods
//
//  Created by Vincil Bishop on 5/13/16.
//
//

#import <Foundation/Foundation.h>
#import "BigUtil.h"
#import "HHRouter.h"

@interface BIGRouter : HHRouter

//@property (nonatomic,strong) HHRouter *HHRouter;

/**
 *  Sets the shared router instance.
 *
 *  @param sharedRouter A BIGRouter instance.
 */
+ (void) setSharedRouter:(BIGRouter*)sharedRouter;

/**
 *  A shared router instance for convenience.
 *
 *  @return The shared router instance.
 */
+ (instancetype) sharedRouter;

/**
 *  Configure routes using a block
 *
 *  @param configBlock The block that will configure routes.
 *
 *  @see: https://github.com/Huohua/HHRouter
 */
- (void) configureRoutes:(BIG_STRONG_BLOCK(BIGRouter*))configBlock;

/**
 *  Convenience method that only executes a route, but does not return a result.
 *
 *  @param route The route string.
 */
- (void) go:(NSString*)route;

/**
 *  Convenience method to get a route.
 *
 *  @param route  The router string to match.
 *  @param result The result, strongly casted to a UIViewController.
 */
- (void) getRoute:(NSString*)route result:(BIG_STRONG_BLOCK(UIViewController*))result;

/**
 *  Convenience method to get a route with a block to be executed on completion.
 *
 *  @param route  The router string to match.
 *  @param completion A block to be executed if the destination controller chooses to after the arbitrary opertaion has been completed.
 *  @param result The result, strongly casted to a UIViewController.
 *
 *  @discussion Useful for things like enforcing a logged in state where you would want logic to be executed after the user has logged in. Available as the "onCompletion" key in parameters.
 */
- (void) getRoute:(NSString*)route onCompletion:(BIGCompletionBlock)completion result:(BIG_STRONG_BLOCK(UIViewController*))result;

/**
 *  Convenience method to get a route with a block to be executed on completion and parameters.
 *
 *  @param route  The router string to match.
 *  @param params     Parameters to pass to the route.
 *  @param completion A block to be executed if the destination controller chooses to after the arbitrary opertaion has been completed.
 *   @param result The result, strongly casted to a UIViewController.
 */
- (void) getRoute:(NSString*)route params:(NSDictionary*)params onCompletion:(BIGCompletionBlock)completion result:(BIG_STRONG_BLOCK(UIViewController*))result;

/**
 *  Convenience method to get a route with a block to be executed on completion and parameters, can return any instance instead of a strong UIViewController cast.
 *
 *  @param route  The router string to match.
 *  @param params     Parameters to pass to the route.
 *  @param completion A block to be executed if the destination controller chooses to after the arbitrary opertaion has been completed.
 *   @param result The result, strongly casted to a UIViewController.
 */
- (void) getRoute:(NSString*)route params:(NSDictionary*)params onCompletion:(BIGCompletionBlock)completion genericResult:(BIGBlock)genericResult;

@end


