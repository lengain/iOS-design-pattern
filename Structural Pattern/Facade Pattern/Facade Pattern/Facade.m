//
//  Facade.m
//  Facade Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import "Facade.h"
#import "SubSystemA.h"
#import "SubSystemB.h"
#import "SubSystemC.h"
@interface Facade()

@property (nonatomic, strong) SubSystemA *a;
@property (nonatomic, strong) SubSystemB *b;
@property (nonatomic, strong) SubSystemC *c;


@end


@implementation Facade

- (instancetype)init
{
    self = [super init];
    if (self) {
        _a = [[SubSystemA alloc] init];
        _b = [[SubSystemB alloc] init];
        _c = [[SubSystemC alloc] init];
    }
    return self;
}

- (void)method {
    [_a methodA];
    [_b methodB];
    [_c methodC];
}


@end
