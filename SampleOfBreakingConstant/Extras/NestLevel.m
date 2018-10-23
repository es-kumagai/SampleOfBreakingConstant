//
//  NestLevel.m
//  SampleOfBreakingConstant
//
//  Created by Tomohiro Kumagai on 10/23/18.
//  Copyright © 2018 Tomohiro Kumagai. All rights reserved.
//

#import "NestLevel.h"

static NSInteger currentLevel = 0;

@implementation KMGNestLevel

- (instancetype)init
{
    self = [super init];
    
    if (self)
    {
        _value = ++currentLevel;
    }
    
    return self;
}

@end
