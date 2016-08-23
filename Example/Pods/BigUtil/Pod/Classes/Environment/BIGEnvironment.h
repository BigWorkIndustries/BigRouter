//
//  BIGEnvironment.h
//  Pods
//
//  Created by Vincil Bishop on 7/21/15.
//
//

#ifndef Pods_BIGEnvironment_h
#define Pods_BIGEnvironment_h

#import "NSBundle+BIGVersionAdditions.h"

// BEGIN CONFIG CONVENIENCE DEFINES

// DEBUG
#if  defined(DEBUG)

#define kBIG_DEBUG YES

#else

#define kBIG_DEBUG NO

#endif

// TEST
#if  defined(TEST)

#define kBIG_TEST YES

#else

#define kBIG_TEST NO

#endif

// QA
#if  defined(QA)

#define kBIG_QA YES

#else

#define kBIG_QA NO

#endif

// STAGE
#if  defined(STAGE)

#define kBIG_STAGE YES

#else

#define kBIG_STAGE NO

#endif

// UAT
#if  defined(UAT)

#define kBIG_UAT YES

#else

#define kBIG_UAT NO

#endif

// PRODUCTION
#if  defined(PRODUCTION)

#define kBIG_PRODUCTION YES

#else

#define kBIG_PRODUCTION NO

#endif
#endif



