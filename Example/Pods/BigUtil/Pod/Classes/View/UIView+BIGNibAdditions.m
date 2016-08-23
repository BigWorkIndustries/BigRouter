//
//  UIView+BIGNibAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 10/16/15.
//
//

#import "UIView+BIGNibAdditions.h"

@implementation UIView (BIGNibAdditions)

+ (instancetype) BIG_viewWithNibNamed:(NSString*)nibName bundle:(NSBundle*)bundle
{
	return [[[UINib nibWithNibName:nibName bundle:bundle] instantiateWithOwner:nil options:nil] firstObject];
}

+ (instancetype) BIG_viewWithNib
{
	return [[[UINib nibWithNibName:NSStringFromClass(self) bundle:nil] instantiateWithOwner:nil options:nil] firstObject];
}

@end
