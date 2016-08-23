//
//  BIGRouter.m
//  Pods
//
//  Created by Vincil Bishop on 5/13/16.
//
//

#import "BIGRouter.h"
#import "HHRouter.h"

static BIGRouter *_sharedRouter;

@implementation BIGRouter

+ (void) setSharedRouter:(BIGRouter*)sharedRouter
{
    _sharedRouter = sharedRouter;
}

+ (instancetype) sharedRouter
{
    if (!_sharedRouter) {
        _sharedRouter = [[BIGRouter alloc] init];
    }
    
    return _sharedRouter;
}

- (instancetype) init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void) configureRoutes:(BIG_STRONG_BLOCK(BIGRouter*))configBlock
{
    configBlock(self);
}

- (void) go:(NSString*)route
{
    [self getRoute:route result:nil];
}

- (void) getRoute:(NSString*)route result:(BIG_STRONG_BLOCK(UIViewController*))result
{
    [self getRoute:route onCompletion:nil result:result];
}

- (void) getRoute:(NSString*)route onCompletion:(BIGCompletionBlock)completion result:(BIG_STRONG_BLOCK(UIViewController*))result
{
    [self getRoute:route params:nil onCompletion:completion result:result];
}

- (void) getRoute:(NSString*)route params:(NSDictionary*)params onCompletion:(BIGCompletionBlock)completion result:(BIG_STRONG_BLOCK(UIViewController*))result
{
    [self getRoute:route params:params onCompletion:completion genericResult:^(id sender){
    
        if (result) {
            result((UIViewController*)sender);
        }
    }];
}

- (void) getRoute:(NSString*)route params:(NSDictionary*)params onCompletion:(BIGCompletionBlock)completion genericResult:(BIGBlock)genericResult
{
    NSMutableDictionary *mutableParams = [NSMutableDictionary new];
    if (params) {
        [mutableParams addEntriesFromDictionary:params];
    }
    
    if (completion) {
        [mutableParams setValue:completion forKey:@"onCompletion"];
    }
    
    HHRouterBlock routeBlock = [self matchBlock:route];
    
    id result = nil;
    
    if (routeBlock) {
        result = routeBlock(mutableParams);
    }
    
    if (genericResult) {
        genericResult(result);
    }
}

@end
