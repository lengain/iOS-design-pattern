//
//  Director.m
//  Chain of Responsibility Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import "Director.h"

@implementation Director
@synthesize name;
@synthesize nextApprover;

- (void)processRequest:(nonnull PurchaseRequest *)request {
    if (request.amount < 50000) {
        NSLog(@"主任 %@ 审批%@", self.name, request);
    }else {
        [self.nextApprover processRequest:request];
    }
}

@end


@implementation President
@synthesize name;
@synthesize nextApprover;

- (void)processRequest:(nonnull PurchaseRequest *)request {
    if (request.amount < 500000) {
        NSLog(@"董事长 %@ 审批%@", self.name, request);
    }else {
        [self.nextApprover processRequest:request];
    }
}

@end


@implementation Congress
@synthesize name;
@synthesize nextApprover;

- (void)processRequest:(nonnull PurchaseRequest *)request {
    NSLog(@"召开董事会审批%@", request);
}

@end
