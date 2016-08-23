//
//  UIView+BIGImageAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 10/16/15.
//
//

#import "UIView+BIGImageAdditions.h"

@implementation UIView (BIGImageAdditions)

- (UIImage *)BIG_image
{
	UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, 0);
	
	if ([self respondsToSelector:@selector(drawViewHierarchyInRect:afterScreenUpdates:)])
		[self drawViewHierarchyInRect:self.bounds afterScreenUpdates:YES];  // if we have efficient iOS 7 method, use it ...
	else
		[self.layer renderInContext:UIGraphicsGetCurrentContext()];         // ... otherwise, fall back to tried and true methods
	
	UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	
	return image;
}

@end
