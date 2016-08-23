//
//  UILocalNotification+BIGAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 8/20/15.
//
//

#import "UILocalNotification+BIGAdditions.h"
#import "UIDevice+VTSystemVersion.h"

@implementation UILocalNotification (BIGAdditions)

+ (UILocalNotification*)BIG_scheduleNotificationWithMessage:(NSString*)message {
    
    UILocalNotification *localNotification = [[UILocalNotification alloc] init];
    
    if ([UIDevice vt_systemVersionIsGreaterThanOrEqualTo:@"8.2"]) {
        localNotification.alertTitle = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleName"];
    }
    
    localNotification.alertBody = message;
    localNotification.alertAction = @"Ok";
    localNotification.fireDate = [NSDate date];
    localNotification.userInfo = @{@"apn":@{@"alert":message}};
    
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    return localNotification;
}

@end
