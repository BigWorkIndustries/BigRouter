//
//  NSString+BIGValidationHelpers.m
//  Pods
//
//  Created by Vincil Bishop on 3/18/16.
//
//

#import "NSString+BIGValidationHelpers.h"

@implementation NSString (BIGValidationHelpers)

- (BOOL) BIG_isAllDigits
{
    NSCharacterSet* nonNumbers = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
    NSRange r = [self rangeOfCharacterFromSet: nonNumbers];
    return r.location == NSNotFound;
}

@end
