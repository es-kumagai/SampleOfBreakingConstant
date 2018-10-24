//
//  KMGBase.m
//  SampleOfBreakingConstant
//
//  Created by Tomohiro Kumagai on 10/23/18.
//  Copyright © 2018 Tomohiro Kumagai. All rights reserved.
//

#import "Base.h"
#import "Report.h"

@implementation KMGBase

- (instancetype)initAsDesignated:(NSInteger)dummy
{
    LogFunction print = makeLogFunctionFor(ClassTypeBase, InitializerTypeDesignated);

    print(@"🏁 Called BASE's DESIGNATED. (Now, initialized completely)");

    return [super init];
}

- (instancetype)initAsConvenience:(NSInteger)value
{
    LogFunction print = makeLogFunctionFor(ClassTypeBase, InitializerTypeConvenience);

    print(@"➡️ Did Enter to BASE's CONVENIENCE.");
    
    print(@"ℹ️ Will call \"My\" DESIGNATED. (self.init)");
    self = [self initAsDesignated:value];
    print(@"ℹ️ Did call \"My\" DESIGNATED.");

    print(@"↩️ Will Exit from BASE's CONVENIENCE.");
    
    return self;
}

@end
