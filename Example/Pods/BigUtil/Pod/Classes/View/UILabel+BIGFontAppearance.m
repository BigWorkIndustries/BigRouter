//
//  UILabel+BIGFontAppearance.m
//
//
//  Created by Vincil Bishop on 1/1/16.
//
//

#import "UILabel+BIGFontAppearance.h"

@implementation UILabel (BIGFontAppearance)

-(void)setAppearanceFont:(UIFont *)font {
    if (font)
        [self setFont:font];
}

-(UIFont *)appearanceFont {
    return self.font;
}

@end
