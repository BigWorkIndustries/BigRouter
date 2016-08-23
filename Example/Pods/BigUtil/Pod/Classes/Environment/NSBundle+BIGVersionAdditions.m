//
//  NSBundle+BIGVersionAdditions.m
//  Pods
//
//  Created by Vincil Bishop on 8/14/15.
//
//

#import "NSBundle+BIGVersionAdditions.h"
#import "NSString+ZENVersions.h"

@implementation NSBundle (BIGVersionAdditions)

- (NSNumber*) BIG_majorVersion
{
    NSNumber *number = nil;
    
    if ([self BIG_versionParts].count > 0) {
        number = [NSNumber numberWithUnsignedInteger:[[[self BIG_versionParts] objectAtIndex:0] unsignedIntegerValue]];
    }
    
    return number;
}

- (NSNumber*) BIG_minorVersion
{
    NSNumber *number = nil;
    
    if ([self BIG_versionParts].count > 1) {
        number = [NSNumber numberWithUnsignedInteger:[[[self BIG_versionParts] objectAtIndex:1] unsignedIntegerValue]];
    }
    
    return number;
}

- (NSNumber*) BIG_patchVersion
{
    NSNumber *number = nil;
    
    if ([self BIG_versionParts].count > 2) {
        number = [NSNumber numberWithUnsignedInteger:[[[self BIG_versionParts] objectAtIndex:2] unsignedIntegerValue]];
    }
    
    return number;
}

- (NSNumber*) BIG_buildVersion
{
    NSNumber *number = nil;
    
    if ([self BIG_versionParts].count > 3) {
        number = [NSNumber numberWithUnsignedInteger:[[[self BIG_versionParts] objectAtIndex:3] unsignedIntegerValue]];
    }
    
    return number;
}

- (NSArray*) BIG_versionParts
{
    NSArray *versionParts = [[self BIG_fourPartVersionString] componentsSeparatedByString:@"."];
    return versionParts;
}

- (NSString*) BIG_fourPartVersionString
{
    return [NSString stringWithFormat:@"%@.%@",[self BIG_marketingVersionString],[self BIG_buildVersionString]];
}

- (NSString*) BIG_threePartVersionString
{
    return [self BIG_buildVersionString];
}


- (NSString*) BIG_marketingVersionString
{
    NSString *versionString = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    return versionString;
    
}

- (NSString*) BIG_buildVersionString
{
    NSString *buildString = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
    return buildString;
}

- (NSString*) BIG_previousAppVersion
{
    [[NSUserDefaults standardUserDefaults] synchronize];
    return [[NSUserDefaults standardUserDefaults] stringForKey:kBIG_PREVIOUS_APP_VERSION_KEY];
}

- (void) BIG_setPreviousAppVersion:(NSString*)appVersion
{
    [[NSUserDefaults standardUserDefaults] setValue:appVersion forKey:kBIG_PREVIOUS_APP_VERSION_KEY];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void) BIG_setCurrentAppVersion
{
    [[NSUserDefaults standardUserDefaults] setValue:[[NSBundle mainBundle] BIG_fourPartVersionString] forKey:kBIG_BIGRRENT_APP_VERSION_KEY];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (NSString*) BIG_currentAppVersion
{
    [[NSUserDefaults standardUserDefaults] synchronize];
    NSString *currentVersion =  [[NSUserDefaults standardUserDefaults] stringForKey:kBIG_BIGRRENT_APP_VERSION_KEY];
    
    if (!currentVersion) {
        [self BIG_setCurrentAppVersion];
        return [[NSBundle mainBundle] BIG_fourPartVersionString];
    } else {
        return currentVersion;
    }
}


- (void) BIG_rotateAppVersionIfNew
{
    if ([self BIG_isCurrentVersionNewVersion]) {
        [self BIG_setCurrentAppVersionToPreviousAppVersion];
    }
}

- (void) BIG_setCurrentAppVersionToPreviousAppVersion
{
    [self BIG_setPreviousAppVersion:[self BIG_currentAppVersion]];
}


- (BOOL) BIG_isFreshInstall
{
    return [self BIG_previousAppVersion] == nil;
}

- (BOOL) BIG_isCurrentVersionNewVersion
{
    NSString *currentVersion = [self BIG_currentAppVersion];
    NSString *previousVersion = [self BIG_previousAppVersion];
    
    if (previousVersion) {
        return [previousVersion zen_olderThan:currentVersion];
    } else {
        return YES;
    }
    
}


@end
