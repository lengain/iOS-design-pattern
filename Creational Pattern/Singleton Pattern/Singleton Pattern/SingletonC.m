//
//  SingletonC.m
//  Singleton Pattern
//
//  Created by 童玉龙 on 2024/2/17.
//

#import "SingletonC.h"

@implementation SingletonC

/// 单线程没问题,多线程会出问题,要加锁.
+ (instancetype)defaultSigleton {
    
    static SingletonC *sigleton = nil;
    if (sigleton == nil) {
        sigleton = [[SingletonC alloc] init];
    }
    return sigleton;
}

@end
