//
//  WhiteIgoChessman.m
//  Flyweight Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import "WhiteIgoChessman.h"

@implementation WhiteIgoChessman

- (NSString *)getColor {
    return @"白色";
}

- (void)display {
    NSLog(@"棋子颜色:%@",[self getColor]);
}

@end
