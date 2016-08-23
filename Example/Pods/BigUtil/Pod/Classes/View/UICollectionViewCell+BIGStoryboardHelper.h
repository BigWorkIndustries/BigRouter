//
//  UICollectionViewCell+BIGStoryboardHelper.h
//  Pods
//
//  Created by Vincil Bishop on 10/14/15.
//
//

#import <UIKit/UIKit.h>

@interface UICollectionViewCell (BIGStoryboardHelper)

+ (NSString*) BIG_identifier;
+ (instancetype) BIG_loadFromNib;
+ (instancetype) BIG_loadFromNibNamed:(NSString*)nibName;

@end
