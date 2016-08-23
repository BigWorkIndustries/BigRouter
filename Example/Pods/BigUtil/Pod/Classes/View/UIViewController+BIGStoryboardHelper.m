//
//  UIViewController+StoryboardHelper.m
//  CarStory-Consumer
//
//  Created by Vincil Bishop on 7/29/15.
//
//

#import "UIViewController+BIGStoryboardHelper.h"


@implementation UIViewController (StoryboardHelper)

+ (instancetype) BIG_instantiateFromMainStoryboard
{
    return [[UIStoryboard mainStoryboard] instantiateViewControllerWithIdentifier:NSStringFromClass(self)];
}


+ (instancetype) BIG_instantiateFromStoryboardNamed:(NSString*)storyboardName
{
    return [[UIStoryboard storyboardWithName:storyboardName bundle:nil] instantiateViewControllerWithIdentifier:NSStringFromClass(self)];
}


+ (instancetype) BIG_instantiateFromStoryboard:(UIStoryboard*)storyboard
{
    return [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass(self)];
}

- (UINavigationController*) BIG_inNavController
{
    return [[UINavigationController alloc] initWithRootViewController:self];
}

@end
