//
//  BIGLogging.m
//  Pods
//
//  Created by Vincil Bishop on 7/21/15.
//
//

#import "BIGLogging.h"

static RMLogFormatter *_logFormatter;

@implementation BIGLogging

+ (void) setupLogging
{
    // CocoaLumberjack Setup
    // e.g. 00:04:10.627 | Error | -[AppDelegate application:didFinishLaunchingWithOptions:]:46 : Error message
    
    if (!kBIG_PRODUCTION) {
        
        [DDASLLogger sharedInstance].logFormatter = [self logFormatter];
        [DDTTYLogger sharedInstance].logFormatter = [self logFormatter];
        
        [DDLog addLogger:[DDASLLogger sharedInstance]];
        [DDLog addLogger:[DDTTYLogger sharedInstance]];
        
        DDFileLogger *fileLogger = [[DDFileLogger alloc] init];
        fileLogger.rollingFrequency = 60 * 60 * 24; // 24 hour rolling
        fileLogger.logFileManager.maximumNumberOfLogFiles = 7;
        fileLogger.logFormatter =  [self logFormatter];
        
        [DDLog addLogger:fileLogger];
        
        [[DDTTYLogger sharedInstance] setColorsEnabled:YES];
    }
}

+ (RMLogFormatter*) logFormatter
{
    if (!_logFormatter) {
        RMLogFormatterOptions options = RMLogFormatterOptionsTimestampShort |
        RMLogFormatterOptionsMethodName |
        RMLogFormatterOptionsLineNumber |
        RMLogFormatterOptionsLogFlagLong;
        
        _logFormatter = [[RMLogFormatter alloc] initWithOptions:options];
    }
    
    return _logFormatter;
}

@end
