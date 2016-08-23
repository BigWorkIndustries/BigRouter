//
//  UIView+BIGHelpers.m
//  Pods
//
//  Created by Vincil Bishop on 2/9/16.
//
//

#import "UIView+BIGHelpers.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIView (BIGHelpers)

- (void) BIG_removeAllSubviews
{
    [self.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj removeFromSuperview];
    }];
}

- (UIViewController *) BIG_parentViewController {
    
    UIResponder *responder = self;
    while ([responder isKindOfClass:[UIView class]]) {
        responder = [responder nextResponder];
    }
    
    if ([responder isKindOfClass:[UIViewController class]]) {
        return (UIViewController *)responder;
    } else {
        return nil;
    }
}

- (void) BIG_roundCornersWithRadius:(CGFloat)radius
{
    self.layer.cornerRadius = radius;
    self.clipsToBounds = YES;
}

- (void) BIG_borderWithWidth:(CGFloat)width color:(UIColor*)color
{
    self.layer.borderWidth = width;
    self.layer.borderColor = color.CGColor;
}


@end
