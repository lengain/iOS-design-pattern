//
//  SingletonB.m
//  Singleton Pattern
//
//  Created by 童玉龙 on 2024/2/17.
//

#import "SingletonB.h"

@implementation SingletonB

+ (instancetype)defaultSigleton {
    static SingletonB *sigleton = nil;
    @synchronized ([SingletonB class]) {
        if (sigleton == nil) {
            sigleton = [[SingletonB alloc] init];
        }
    }
    return sigleton;
}

@end
