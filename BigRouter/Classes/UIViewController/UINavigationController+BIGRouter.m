//
//  UINavigationController+BIGRouter.m
//  Pods
//
//  Created by Vincil Bishop on 5/13/16.
//
//

#import "UINavigationController+BIGRouter.h"
#import "BIGRouter.h"

@implementation UINavigationController (BIGRouter)

- (void) BIG_pushRoute:(NSString*)route
{
    [self BIG_pushRoute:route animated:YES completion:nil];
}

- (void) BIG_pushRoute:(NSString*)route beforeCompletion:(BIG_STRONG_BLOCK(id,controller))beforeCompletion
{
    [self BIG_pushRoute:route animated:YES completion:nil beforeCompletion:beforeCompletion onCompletion:nil];
}

- (void) BIG_pushRoute:(NSString*)route animated:(BOOL)flag completion:(void (^)(void))completion
{
    [self BIG_pushRoute:route animated:flag completion:completion beforeCompletion:nil onCompletion:nil];
}

- (void) BIG_pushRoute:(NSString*)route animated:(BOOL)flag completion:(void (^)(void))completion beforeCompletion:(BIG_STRONG_BLOCK(id,controller))beforeCompletion onCompletion:(BIGCompletionBlock)onCompletion
{
    [[BIGRouter sharedRouter] getRoute:route onCompletion:onCompletion  result:^(UIViewController *controller){
        
        if (controller) {
            
            if (beforeCompletion) {
                beforeCompletion(controller);
            }
            
            [self pushViewController:controller animated:flag];
        }
        
    }];
}

@end