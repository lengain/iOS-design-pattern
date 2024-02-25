//
//  BlackIgoChessman.m
//  Flyweight Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import "BlackIgoChessman.h"

@implementation BlackIgoChessman

- (NSString *)getColor {
    return @"黑色";
}

- (void)display {
    NSLog(@"棋子颜色:%@",[self getColor]);
}

@end
