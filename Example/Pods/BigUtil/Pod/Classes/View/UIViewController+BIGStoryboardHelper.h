//
//  UIViewController+StoryboardHelper.h
//  CarStory-Consumer
//
//  Created by Vincil Bishop on 7/29/15.
//
//

#import <UIKit/UIKit.h>
#import <KPAStoryboardConvenience/UIStoryboard+KPAConvenience.h>

@interface UIViewController (StoryboardHelper)

/**
 *  Instantiates a new instance of the view controller type from the main storyboard.
 *
 *  @return A new instance of the view controller.
 *
 *  @discussion This helper method depends on the view controller's storyboard identifier being set to the class name, and the mainStoryboard helper being previously set. 
    @see https://github.com/klaaspieter/KPAStoryboardConvenience
 */
+ (instancetype) BIG_instantiateFromMainStoryboard;


/**
 *  Instantiates a new instance of the view controller type from the named storyboard.
 *
 *  @param storyboardName The name of the storyboard to use.
 *
 *  @return A new instance of the view controller.
 *
 *  @discussion This helper method depends on the view controller's storyboard identifier being set to the class name.
 */
+ (instancetype) BIG_instantiateFromStoryboardNamed:(NSString*)storyboardName;

/**
 *  Instantiates a new instance of the view controller type from the passed storyboard.
 *
 *  @param storyboard An instance of the storyboard to use.
 *
 *  @return A new instance of the view controller.
 *
 *  @discussion This helper method depends on the view controller's storyboard identifier being set to the class name.
 */
+ (instancetype) BIG_instantiateFromStoryboard:(UIStoryboard*)storyboard;

/**
 *  Returns the instance inside of a UINavigationController.
 *
 *  @return A UINavigationController instance with self as the root view controller.
 */
- (UINavigationController*) BIG_inNavController;

@end
