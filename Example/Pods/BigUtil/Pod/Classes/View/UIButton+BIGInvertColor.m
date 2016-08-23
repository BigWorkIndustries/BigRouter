//
//  UIButton+BIGInvertColor.m
//  Pods
//
//  Created by Vincil Bishop on 4/18/16.
//
//

#import "UIButton+BIGInvertColor.h"

@implementation UIButton (BIGInvertColor)

- (void) BIG_configureInvertedHighlightColors
{
    self.layer.borderWidth = 1.0f;
    self.layer.borderColor = self.backgroundColor.CGColor;
    [self addTarget:self action:@selector(BIG_buttonHighlight:) forControlEvents:UIControlEventTouchDown];
    [self addTarget:self action:@selector(BIG_buttonNormal:) forControlEvents:UIControlEventTouchUpInside];
}

- (void) BIG_buttonHighlight:(UIButton*)sender
{
    [self BIG_setBackgroundColor:sender.titleLabel.textColor textColor:sender.backgroundColor];
}

- (void) BIG_buttonNormal:(UIButton*)sender
{
    [self BIG_setBackgroundColor:sender.titleLabel.textColor textColor:sender.backgroundColor];
}

- (void) BIG_setBackgroundColor:(UIColor*)backgroundColor textColor:(UIColor*)textColor
{
    [self setTitleColor:textColor forState:self.state];
    self.backgroundColor = backgroundColor;
}

@end
