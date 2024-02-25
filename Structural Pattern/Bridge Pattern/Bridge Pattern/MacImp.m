//
//  MacImp.m
//  Bridge Pattern
//
//  Created by 童玉龙 on 2024/2/19.
//

#import "MacImp.h"

@implementation MacImp
@synthesize m;

- (void)doPaint:(Matrix *)m {
    self.m = m;
    NSLog(@"在Linux操作系统中显示图像");
}


@end
