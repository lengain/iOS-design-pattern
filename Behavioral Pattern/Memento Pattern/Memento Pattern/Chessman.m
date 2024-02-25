//
//  Chessman.m
//  Memento Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import "Chessman.h"

@implementation Chessman


+ (nonnull instancetype)chessWithX:(NSInteger)x Y:(NSInteger)y label:(nonnull NSString *)label {
    Chessman *cm = [Chessman new];
    cm.x = x;
    cm.y = y;
    cm.label = label;
    return cm;
}


- (ChessmanMemento *)save {
    return [ChessmanMemento chessMmementoWithX:_x Y:_y label:_label];
}

- (void)restore:(ChessmanMemento *)memento {
    _label = memento.label;
    _x = memento.x;
    _y = memento.y;
}

- (void)display {
    NSLog(@"棋子的当前位置为:第%zd行第%zd列",_x, _y);
}

@end
