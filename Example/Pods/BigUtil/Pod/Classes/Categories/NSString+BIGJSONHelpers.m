//
//  NSString+BIGJSONHelpers.m
//  Pods
//
//  Created by Vincil Bishop on 3/23/16.
//
//

#import "NSString+BIGJSONHelpers.h"

@implementation NSString (BIGJSONHelpers)

- (id) BIG_JSONObject
{
    NSData *objectData = [self dataUsingEncoding:NSUTF8StringEncoding];
    id json = [NSJSONSerialization JSONObjectWithData:objectData
                                                         options:NSJSONReadingMutableContainers
                                                           error:nil];
    
    return json;
}


- (NSDictionary*) BIG_JSONDictionary
{
    return (NSDictionary*)[self BIG_JSONObject];
}


- (NSArray*) BIG_JSONArray
{
    return (NSArray*)[self BIG_JSONObject];
}

@end
