//
//  NSArray+EnumExtensions.m
//
//  Created by Vincil Bishop on 11/17/15.
//

#import "NSArray+EnumExtensions.h"

@implementation NSArray (EnumExtensions)

- (NSString*) stringWithEnum: (NSUInteger) enumVal
{
	return [self objectAtIndex:enumVal];
}

- (NSUInteger) enumFromString: (NSString*) strVal default: (NSUInteger) def
{
	NSUInteger n = [self indexOfObject:strVal];
	if(n == NSNotFound) n = def;
	return n;
}

- (NSUInteger) enumFromString: (NSString*) strVal
{
	return [self enumFromString:strVal default:0];
}

@end
