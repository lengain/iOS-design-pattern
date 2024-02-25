//
//  AbstractIterator.h
//  Iterator Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol AbstractIterator <NSObject>

- (void)next;
- (BOOL)isLast;
- (void)previous;
- (BOOL)isFirst;
- (id)getNextItem;
- (id)getPreviousItem;


@end

NS_ASSUME_NONNULL_END
