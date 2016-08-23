//
//  NSArray+EnumExtensions.h
//
//  Created by Vincil Bishop on 11/17/15.
//

#import <Foundation/Foundation.h>

@interface NSArray (EnumExtensions)

- (NSString*) stringWithEnum: (NSUInteger) enumVal;
- (NSUInteger) enumFromString: (NSString*) strVal default: (NSUInteger) def;
- (NSUInteger) enumFromString: (NSString*) strVal;

@end
