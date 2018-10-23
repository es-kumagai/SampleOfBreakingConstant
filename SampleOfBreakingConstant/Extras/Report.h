//
//  Report.h
//  SampleOfBreakingConstant
//
//  Created by Tomohiro Kumagai on 10/23/18.
//  Copyright © 2018 Tomohiro Kumagai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NestLevel.h"

typedef NS_ENUM(NSUInteger, ClassType) {
    ClassTypeBase,
    ClassTypeSub,
};

typedef NS_ENUM(NSUInteger, InitializerType) {
    InitializerTypeDesignated,
    InitializerTypeConvenience,
};

void report( KMGNestLevel* _Nonnull  level, ClassType classType, InitializerType initType, NSString* _Nonnull message) NS_SWIFT_NAME(report(nest:class:init:message:));
