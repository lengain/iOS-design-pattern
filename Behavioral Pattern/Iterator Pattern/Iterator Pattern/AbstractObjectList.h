//
//  AbstractObjectList.h
//  Iterator Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol AbstractObjectList <NSObject>

@property (nonatomic, strong) NSMutableArray *objects;

- (void)addObjects:(NSArray *)objs;
- (void)addObject:(id)obj;
- (void)removeObject:(id)obj;

@end

NS_ASSUME_NONNULL_END
