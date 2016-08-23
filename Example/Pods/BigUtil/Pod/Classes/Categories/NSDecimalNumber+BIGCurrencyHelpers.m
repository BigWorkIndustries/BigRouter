//
//  NSDecimalNumber+BIGCurrencyHelpers.m
//  Pods
//
//  Created by Vincil Bishop on 3/8/16.
//
//

#import "NSDecimalNumber+BIGCurrencyHelpers.h"

@implementation NSDecimalNumber (BIGCurrencyHelpers)

- (NSString*) BIG_currencyForDisplay
{
    return [NSString stringWithFormat:@"$%.2f",self.floatValue];
}

@end
