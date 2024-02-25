//
//  ChessmanMemento.m
//  Memento Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import "ChessmanMemento.h"

@implementation ChessmanMemento

+ (instancetype)chessMmementoWithX:(NSInteger)x Y:(NSInteger)y label:(NSString *)label {
    ChessmanMemento *cm = [ChessmanMemento new];
    cm.x = x;
    cm.y = y;
    cm.label = label;
    return cm;
}

@end
