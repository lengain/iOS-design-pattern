//
//  ChessmanMemento.h
//  Memento Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChessmanMemento : NSObject

@property (nonatomic, strong) NSString *label;
@property (nonatomic, assign) NSInteger x;
@property (nonatomic, assign) NSInteger y;

+ (instancetype)chessMmementoWithX:(NSInteger)x Y:(NSInteger)y label:(NSString *)label;

@end

NS_ASSUME_NONNULL_END
