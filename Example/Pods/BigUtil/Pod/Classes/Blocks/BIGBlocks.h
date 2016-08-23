//
//  BIGBlocks.h
//  Pods
//
//  Created by Vincil Bishop on 7/21/15.
//
//

#ifndef Pods_BIGBlocks_h
#define Pods_BIGBlocks_h


#endif

typedef void (^BIGBlock)(id sender);

typedef void (^BIGCompletionBlock)(id sender, BOOL success, NSError *error, id result);

typedef void (^BIGStateChangeBlock)(id sender, id oldState, id newState);

#define BIG_STRONG_BLOCK(__RESULT_TYPE__) \
void (^)(__RESULT_TYPE__ sender)

#define BIG_STRONG_COMPLETION(__RESULT_TYPE__) \
void (^)(id sender, BOOL success, NSError *error, __RESULT_TYPE__ result)

#define BIG_STRONG_SENDER_COMPLETION(__SENDER_TYPE__,__RESULT_TYPE__) \
void (^)(__SENDER_TYPE__ sender, BOOL success, NSError *error, __RESULT_TYPE__ result)

#define BIG_STRONG_RETURN(__INPUT_TYPE__,__RETURN_TYPE__) \
__RETURN_TYPE__ (^)(__INPUT_TYPE__ input)
