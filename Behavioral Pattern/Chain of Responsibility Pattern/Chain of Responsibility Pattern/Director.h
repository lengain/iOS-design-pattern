//
//  Director.h
//  Chain of Responsibility Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import <Foundation/Foundation.h>
#import "Approver.h"
NS_ASSUME_NONNULL_BEGIN

@interface Director : NSObject <Approver>

@end

@interface President : NSObject <Approver>

@end

@interface Congress : NSObject <Approver>

@end

NS_ASSUME_NONNULL_END
