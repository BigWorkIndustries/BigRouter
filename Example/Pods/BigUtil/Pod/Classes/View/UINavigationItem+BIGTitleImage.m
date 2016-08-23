//
//  UINavigationItem+BIGImageAdditions.m
//
//
//  Created by Vincil Bishop on 1/1/16.
//
//

#import "UINavigationItem+BIGTitleImage.h"

@implementation UINavigationItem (LSImageAdditions)

- (void) BIG_setHeaderLogoWithImage:(UIImage*)image
{
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.clipsToBounds = YES;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.frame = CGRectMake(0, 0, image.size.width, image.size.height);
    [self setTitleView:imageView];
}

@end
