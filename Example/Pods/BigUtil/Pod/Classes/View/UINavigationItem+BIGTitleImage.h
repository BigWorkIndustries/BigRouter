//
//  UINavigationItem+BIGImageAdditions.h
//
//
//  Created by Vincil Bishop on 1/1/16.
//
//

#import <UIKit/UIKit.h>

@interface UINavigationItem (BIGTitleImage)

/**
 *  Sets the header title view with an image.
 *
 *  @param image An image to display as the title.
 *
 *  @discussion The size of the UIImageView is automatically determined using the size of the image. 
 */
- (void) BIG_setHeaderLogoWithImage:(UIImage*)image;

@end
