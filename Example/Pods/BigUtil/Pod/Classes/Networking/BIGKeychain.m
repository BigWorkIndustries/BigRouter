//
//  BIGKeychain.m
//  Pods
//
//  Created by Vincil Bishop on 10/7/15.
//
//

#import "BIGKeychain.h"
#import "FXKeychain.h"

#define kBIG_BearerTokenKey @"kBIG_BearerTokenKey"
#define kBIG_AuthTokenKey @"kBIG_AuthTokenKey"
#define kBIG_DefaultUsernameKey @"kBIG_DefaultUsernameKey"
#define kBIG_DefaultPasswordKey @"kBIG_DefaultPasswordKey"
#define kBIG_CurrentUserIdKey @"kBIG_CurrentUserIdKey"
#define kBIG_APNSTokenKey @"kBIG_APNSTokenKey"

@implementation BIGKeychain

+ (void) setBearerToken:(NSDictionary*)value
{
	if (value) {
		[[FXKeychain defaultKeychain] setObject:value forKey:kBIG_BearerTokenKey];
	}  else {
		[[FXKeychain defaultKeychain] removeObjectForKey:kBIG_BearerTokenKey];
	}
}

+ (NSDictionary*) bearerToken
{
	return [[FXKeychain defaultKeychain] objectForKey:kBIG_BearerTokenKey];
}

+ (BOOL) isBearerTokenValid
{
	if ([self bearerToken]) {
		
		NSNumber *timestampNumber = [self bearerToken][@"expiry"];
		NSDate *expireDate = [NSDate dateWithTimeIntervalSince1970:timestampNumber.doubleValue];
		
		if ([expireDate timeIntervalSinceNow] > 0) {
			return YES;
		} else {
			return NO;
		}
		
	} else {
		return NO;
	}
}

+ (void) setAuthToken:(NSString*)value
{
	if (value) {
		[[FXKeychain defaultKeychain] setObject:value forKey:kBIG_AuthTokenKey];
	}  else {
		[[FXKeychain defaultKeychain] removeObjectForKey:kBIG_AuthTokenKey];
	}
}

+ (NSString*) authToken
{
	return [[FXKeychain defaultKeychain] objectForKey:kBIG_AuthTokenKey];
}

+ (void) setDefaultUsername:(NSString*)value
{
	if (value) {
		[[NSUserDefaults standardUserDefaults] setObject:value forKey:kBIG_DefaultUsernameKey];
	}  else {
		[[NSUserDefaults standardUserDefaults] removeObjectForKey:kBIG_DefaultUsernameKey];
	}
}

+ (NSString*) defaultUsername
{
	return [[NSUserDefaults standardUserDefaults] objectForKey:kBIG_DefaultUsernameKey];
}

+ (void) setDefaultPassword:(NSString*)value
{
	if (value) {
		[[FXKeychain defaultKeychain] setObject:value forKey:kBIG_DefaultPasswordKey];
	} else {
		[[FXKeychain defaultKeychain] removeObjectForKey:kBIG_DefaultPasswordKey];
	}
}

+ (NSString*) defaultPassword
{
	return [[FXKeychain defaultKeychain] objectForKey:kBIG_DefaultPasswordKey];
}

+ (void) setCurrentUserId:(id)value
{
	if (value) {
		[[NSUserDefaults standardUserDefaults] setObject:value forKey:kBIG_CurrentUserIdKey];
	}  else {
		[[NSUserDefaults standardUserDefaults] removeObjectForKey:kBIG_CurrentUserIdKey];
	}
}

+ (id) currentUserId
{
	id value = [[NSUserDefaults standardUserDefaults] objectForKey:kBIG_CurrentUserIdKey];
	return value;
}

+ (void) setAPNSToken:(NSString*)value
{
	if (value) {
		[[NSUserDefaults standardUserDefaults] setObject:value forKey:kBIG_APNSTokenKey];
	}  else {
		[[NSUserDefaults standardUserDefaults] removeObjectForKey:kBIG_APNSTokenKey];
	}
}

+ (NSString*) APNSToken
{
	id value = [[NSUserDefaults standardUserDefaults] objectForKey:kBIG_APNSTokenKey];
	return value;
}



+ (BOOL) hasDefaultCredentials
{
	return [self defaultUsername] && [self defaultPassword];
}

+ (void) clearDefaults
{
	[self setAuthToken:nil];
	[self setCurrentUserId:nil];
	[self setDefaultPassword:nil];
}


@end
