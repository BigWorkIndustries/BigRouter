//
//  NSDateFormatter+GPJSONDate.m
//
//  Created by Vincil Bishop on 11/7/15.
//

#import "NSDateFormatter+RailsJSONDate.h"

static NSDateFormatter *_JSONDateFormatter;

@implementation NSDateFormatter (RailsJSONDate)

+ (NSDateFormatter*) BIG_RailsJSONDateFormatter
{
	if (!_JSONDateFormatter) {
		_JSONDateFormatter = [NSDateFormatter new];
		[_JSONDateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"];
	}
	
	return _JSONDateFormatter;
}

@end
