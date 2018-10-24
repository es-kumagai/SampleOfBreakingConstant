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

typedef void (^LogFunction)(NSString*);

LogFunction _Nonnull makeLogFunctionFor(ClassType classType, InitializerType initType);
