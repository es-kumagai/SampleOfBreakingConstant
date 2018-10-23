//
//  KMGBase.h
//  SampleOfBreakingConstant
//
//  Created by Tomohiro Kumagai on 10/23/18.
//  Copyright © 2018 Tomohiro Kumagai. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

NS_SWIFT_NAME(Base)
@interface KMGBase : NSObject

- (instancetype)initAsDesignated:(NSInteger)dummy NS_SWIFT_NAME(init(designated:));
- (instancetype)initAsConvenience:(NSInteger)value NS_SWIFT_NAME(init(convenience:));

@end

NS_ASSUME_NONNULL_END
