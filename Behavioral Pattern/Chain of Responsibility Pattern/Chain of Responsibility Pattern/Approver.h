//
//  Approver.h
//  Chain of Responsibility Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import <Foundation/Foundation.h>
#import "PurchaseRequest.h"

NS_ASSUME_NONNULL_BEGIN

@protocol Approver <NSObject>

@property (nonatomic, strong) NSObject <Approver> * nextApprover;
@property (nonatomic, strong) NSString *name;

- (void)processRequest:(PurchaseRequest *)request;

@end

NS_ASSUME_NONNULL_END
