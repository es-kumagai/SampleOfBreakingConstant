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

typedef void (^LOG)(KMGNestLevel* _Nonnull level, NSString* _Nonnull message);

- (instancetype)initAsDesignated:(NSInteger)dummy
{
    KMGNestLevel* level = [[KMGNestLevel alloc] init];
    LOG log = ^(KMGNestLevel* level, NSString* message) { report(level, ClassTypeBase, InitializerTypeDesignated, message); };

    log(level, @"🏁 Called (Initialized completely)");

    return [super init];
}

- (instancetype)initAsConvenience:(NSInteger)value
{
    KMGNestLevel* level = [[KMGNestLevel alloc] init];
    LOG log = ^(KMGNestLevel* level, NSString* message) { report(level, ClassTypeBase, InitializerTypeConvenience, message); };
    
    log(level, @"➡️ Did Enter");

    self = [self initAsDesignated:value];
    
    if (self)
    {
    }
    
    log(level, @"↩️ Will Exit");
    return self;
}

@end
