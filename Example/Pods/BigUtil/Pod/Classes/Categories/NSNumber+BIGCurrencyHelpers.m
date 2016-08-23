//
//  NSNumber+BIGCurrencyHelpers.m
//  Pods
//
//  Created by Vincil Bishop on 3/8/16.
//
//

#import "NSNumber+BIGCurrencyHelpers.h"

@implementation NSNumber (BIGCurrencyHelpers)

- (NSString*) BIG_currencyForDisplay
{
    return [NSString stringWithFormat:@"$%.2f",self.floatValue];
}

@end
