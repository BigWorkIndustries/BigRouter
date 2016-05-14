//
//  UIViewController+BIGRouter.m
//  Pods
//
//  Created by Vincil Bishop on 5/13/16.
//
//

#import "UIViewController+BIGRouter.h"
#import "BIGRouter.h"

@implementation UIViewController (BIGRouter)

+ (void) BIG_mapRoute:(NSString*)route
{
    [self BIG_mapRoute:route fromStoryboard:[UIStoryboard mainStoryboard] toBlock:nil];
}

+ (void) BIG_mapRoute:(NSString*)route toBlock:(id(^)(NSDictionary *params,UIViewController *controller))block
{
    [self BIG_mapRoute:route fromStoryboard:[UIStoryboard mainStoryboard] toBlock:block];
}

+ (void) BIG_mapRoute:(NSString*)route fromStoryboard:(UIStoryboard*)storyboard
{
    [self BIG_mapRoute:route fromStoryboard:storyboard toBlock:nil];
}

+ (void) BIG_mapRoute:(NSString*)route fromStoryboard:(UIStoryboard*)storyboard toBlock:(id(^)(NSDictionary *params,UIViewController *controller))block
{
    [[BIGRouter sharedRouter] map:route toBlock:^id(NSDictionary *params) {
        
        UIViewController *controller = [self BIG_instantiateFromStoryboard:storyboard];
        
        if (block) {
            
            return block(params,controller);
        
        } else {
        
            return controller;
        }
        
    }];
}

- (void) BIG_presentRoute:(NSString*)route
{
    [self BIG_presentRoute:route animated:YES completion:nil];
}

- (void) BIG_presentRoute:(NSString*)route beforeCompletion:(BIG_STRONG_BLOCK(id,controller))beforeCompletion
{
    [self BIG_presentRoute:route animated:YES completion:nil beforeCompletion:beforeCompletion onCompletion:nil];
}

- (void) BIG_presentRoute:(NSString*)route animated:(BOOL)flag completion:(void (^)(void))completion {

    [self BIG_presentRoute:route animated:flag completion:completion beforeCompletion:nil onCompletion:nil];
}

- (void) BIG_presentRoute:(NSString*)route animated:(BOOL)flag completion:(void (^)(void))completion beforeCompletion:(BIG_STRONG_BLOCK(id,controller))beforeCompletion onCompletion:(BIGCompletionBlock)onCompletion
{
    [[BIGRouter sharedRouter] getRoute:route onCompletion:onCompletion  result:^(UIViewController *controller){
        
        if (beforeCompletion) {
            beforeCompletion(controller);
        }
        
        if (controller) {
            [self presentViewController:controller animated:flag completion:completion];
        }
    }];
}

@end