//
//  ViewController.m
//  Proxy Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import "ViewController.h"

@implementation ViewController

- (void)sendAction {
    NSLog(@"找到代理,通知代理执行任务");
    [self.delegate receiveAction];
}

@end
