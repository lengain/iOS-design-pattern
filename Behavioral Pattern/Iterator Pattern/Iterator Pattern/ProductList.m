//
//  ProductList.m
//  Iterator Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import "ProductList.h"

@implementation ProductList
@synthesize objects;

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.objects = [NSMutableArray array];
    }
    return self;
}

- (void)addObjects:(NSArray *)objs {
    [self.objects addObjectsFromArray:objs];
}

- (void)addObject:(nonnull id)obj {
    [self.objects addObject:obj];
}

- (void)removeObject:(nonnull id)obj {
    [self.objects removeObject:obj];
}


@end
