//
//  PurchaseRequest.m
//  Chain of Responsibility Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import "PurchaseRequest.h"
@interface PurchaseRequest()


@end

@implementation PurchaseRequest


+ (instancetype)purchanseWithAmount:(CGFloat)amount number:(NSInteger)number purpose:(NSString *)purpose {
    PurchaseRequest *pr = [[PurchaseRequest alloc] init];
    pr.amount = amount;
    pr.number = number;
    pr.purpose = purpose;
    return pr;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"采购单:%zd, 金额:%f元, 采购目的:%@", self.number, self.amount, self.purpose];
}

@end
