//
// UIDevice+VTSystemVersion.h
//
// Copyright (c) 2015 Vincent Tourraine (http://www.vtourraine.net)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import <UIKit/UIKit.h>

/**
 `VTSystemVersion` is a category on `UIDevice` to help compare system versions.
 */
@interface UIDevice (VTSystemVersion)

/**
 Compares the current device system version with the specified value.

 @param systemVersion The system version as a string with which to compare the
 current device value.

 @return The result of the comparaison.
 */
+ (NSComparisonResult)vt_compareSystemVersionTo:(NSString *)systemVersion;

/**
 Tests if the current device system version is equal to the specified value.

 @param systemVersion The system version as a string with which to compare the
 current device value.

 @return The result of the comparaison.
 */
+ (BOOL)vt_systemVersionIsEqualTo:(NSString *)systemVersion;

/**
 Tests if the current device system version is greater than the specified value.

 @param systemVersion The system version as a string with which to compare the
 current device value.

 @return The result of the comparaison.
 */
+ (BOOL)vt_systemVersionIsGreaterThan:(NSString *)systemVersion;

/**
 Tests if the current device system version is greater than or equal to the
 specified value.

 @param systemVersion The system version as a string with which to compare the
 current device value.

 @return The result of the comparaison.
 */
+ (BOOL)vt_systemVersionIsGreaterThanOrEqualTo:(NSString *)systemVersion;

/**
 Tests if the current device system version is less than the specified value.

 @param systemVersion The system version as a string with which to compare the
 current device value.

 @return The result of the comparaison.
 */
+ (BOOL)vt_systemVersionIsLessThan:(NSString *)systemVersion;

/**
 Tests if the current device system version is less than or equal to the
 specified value.

 @param systemVersion The system version as a string with which to compare the
 current device value.

 @return The result of the comparaison.
 */
+ (BOOL)vt_systemVersionIsLessThanOrEqualTo:(NSString *)systemVersion;

@end
