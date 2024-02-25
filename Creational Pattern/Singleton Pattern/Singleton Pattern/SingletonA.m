//
//  SingletonA.m
//  Singleton Pattern
//
//  Created by 童玉龙 on 2024/2/17.
//

#import "SingletonA.h"

@implementation SingletonA
//单例模式 推荐写法
+ (instancetype)defaultSigleton {
    static SingletonA *sigleton = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sigleton = [[SingletonA alloc] init];
    });
    return sigleton;
}


@end
