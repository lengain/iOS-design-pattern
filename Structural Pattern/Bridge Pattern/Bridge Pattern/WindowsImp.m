//
//  WindowsImp.m
//  Bridge Pattern
//
//  Created by 童玉龙 on 2024/2/19.
//

#import "WindowsImp.h"

@implementation WindowsImp
@synthesize m;

- (void)doPaint:(Matrix *)m {
    self.m = m;
    NSLog(@"解析矩阵%@",self.m);
    NSLog(@"在Windows操作系统中显示");
}


@end

