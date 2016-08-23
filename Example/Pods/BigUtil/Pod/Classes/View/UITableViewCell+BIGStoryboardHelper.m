//
//  UITableViewCell+BIGStoryboardHelper.m
//  Pods
//
//  Created by Vincil Bishop on 10/14/15.
//
//

#import "UITableViewCell+BIGStoryboardHelper.h"

@implementation UITableViewCell (BIGStoryboardHelper)

+ (NSString*) BIG_identifier
{
	return NSStringFromClass(self);
}

+ (instancetype) BIG_loadFromNib
{
	return [self BIG_loadFromNibNamed:[self BIG_identifier]];
}

+ (instancetype) BIG_loadFromNibNamed:(NSString*)nibName
{
	// Load the top-level objects from the custom cell XIB.
	NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:nibName owner:self options:nil];
	// Grab a pointer to the first object (presumably the custom cell, as that's all the XIB should contain).
	return [topLevelObjects objectAtIndex:0];
}

@end
