//
//  MementoCaretaker.h
//  Memento Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import <Foundation/Foundation.h>
#import "ChessmanMemento.h"

NS_ASSUME_NONNULL_BEGIN

@interface MementoCaretaker : NSObject

- (void)push:(ChessmanMemento *)memento;
- (ChessmanMemento *)pop;

@end

NS_ASSUME_NONNULL_END
