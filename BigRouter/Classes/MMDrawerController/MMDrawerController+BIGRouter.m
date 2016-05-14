//
//  MMDrawerController+BIGRouter.m
//  Pods
//
//  Created by Vincil Bishop on 5/13/16.
//
//

#import "MMDrawerController+BIGRouter.h"
#import "BIGRouter.h"

@implementation MMDrawerController (BIGRouter)

- (void) BIG_setCenterRoute:(NSString*)route
{
    [self BIG_setCenterRoute:route withCloseAnimation:YES completion:nil onCompletion:nil];
}

- (void) BIG_setCenterRoute:(NSString*)route withCloseAnimation:(BOOL)closeAnimated completion:(void(^)(BOOL finished))completion
{
    [self BIG_setCenterRoute:route withCloseAnimation:closeAnimated completion:completion onCompletion:nil];
}

- (void) BIG_setCenterRoute:(NSString*)route withCloseAnimation:(BOOL)closeAnimated completion:(void(^)(BOOL finished))completion onCompletion:(BIGCompletionBlock)onCompletion
{
    [[BIGRouter sharedRouter] getRoute:route onCompletion:onCompletion result:^(UIViewController *viewController) {
       
        [self setCenterViewController:viewController withCloseAnimation:closeAnimated completion:completion];
        
    }];
}

- (void) BIG_setLeftRoute:(NSString*)route
{
    [[BIGRouter sharedRouter] getRoute:route onCompletion:nil result:^(UIViewController *viewController) {
        
        self.leftDrawerViewController = viewController;
        
    }];
}

- (void) BIG_setRightRoute:(NSString*)route
{
    [[BIGRouter sharedRouter] getRoute:route onCompletion:nil result:^(UIViewController *viewController) {
        
        self.rightDrawerViewController = viewController;
        
    }];
}

@end
