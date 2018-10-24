//
//  Report.m
//  SampleOfBreakingConstant
//
//  Created by Tomohiro Kumagai on 10/23/18.
//  Copyright © 2018 Tomohiro Kumagai. All rights reserved.
//

#import "Report.h"

void report( KMGNestLevel* _Nonnull  level, ClassType classType, InitializerType initType, NSString* _Nonnull message) NS_SWIFT_NAME(report(nest:class:init:message:));

LogFunction makeLogFunctionFor(ClassType classType, InitializerType initType)
{
    KMGNestLevel* level = [[KMGNestLevel alloc] init];
    
    return ^(NSString* message) {
        
        report(level, classType, initType, message);
    };
}

void report(KMGNestLevel* level, ClassType classType, InitializerType initType, NSString* message)
{
    const char* classLabel = nil;
    const char* initLabel = nil;
    
    switch (classType)
    {
        case ClassTypeBase:
            classLabel = "🚺 BASE";
            break;
            
        case ClassTypeSub:
            classLabel = "🚼 SUB ";
            break;
    }
    
    switch (initType)
    {
        case InitializerTypeDesignated:
            initLabel = "🙋‍♀️ DESIGNATED ";
            break;
            
        case InitializerTypeConvenience:
            initLabel = "🙇🏻‍♂️ CONVENIENCE";
            break;
    }
    
    printf("(%ld) %s » %s » %s\n", level.value, classLabel, initLabel, message.UTF8String);
}
