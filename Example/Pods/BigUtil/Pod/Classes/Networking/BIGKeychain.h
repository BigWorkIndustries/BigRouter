//
//  BIGKeychain.h
//  Pods
//
//  Created by Vincil Bishop on 10/7/15.
//
//

#import <Foundation/Foundation.h>

@interface BIGKeychain : NSObject

+ (void) setBearerToken:(NSDictionary*)value;
+ (NSDictionary*) bearerToken;
+ (void) setAuthToken:(NSString*)value;
+ (NSString*) authToken;
+ (void) setDefaultUsername:(NSString*)value;
+ (NSString*) defaultUsername;
+ (void) setDefaultPassword:(NSString*)value;
+ (NSString*) defaultPassword;
+ (void) setCurrentUserId:(id)value;
+ (id) currentUserId;
+ (void) setAPNSToken:(NSString*)value;
+ (NSString*) APNSToken;

+ (BOOL) hasDefaultCredentials;
+ (void) clearDefaults;


@end
