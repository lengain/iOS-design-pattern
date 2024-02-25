//
//  Chessman.h
//  Memento Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import <Foundation/Foundation.h>
#import "ChessmanMemento.h"
NS_ASSUME_NONNULL_BEGIN

@interface Chessman : NSObject

@property (nonatomic, strong) NSString *label;
@property (nonatomic, assign) NSInteger x;
@property (nonatomic, assign) NSInteger y;

+ (instancetype)chessWithX:(NSInteger)x Y:(NSInteger)y label:(NSString *)label;

- (ChessmanMemento *)save;
- (void)restore:(ChessmanMemento *)memento;
- (void)display;

@end

NS_ASSUME_NONNULL_END
