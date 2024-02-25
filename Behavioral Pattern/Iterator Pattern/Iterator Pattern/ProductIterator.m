//
//  ProductIterator.m
//  Iterator Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import "ProductIterator.h"

@implementation ProductIterator

- (instancetype)initWithList:(NSObject<AbstractObjectList> *)productList
{
    self = [super init];
    if (self) {
        self.productList = productList;
        self.products = productList.objects;
        _cursor1 = 0;
        _cursor2 = _products.count - 1;
    }
    return self;
}

- (nonnull id)getNextItem {
    return [self.products objectAtIndex:_cursor1];
}

- (nonnull id)getPreviousItem { 
    return [self.products objectAtIndex:_cursor2];
}

- (BOOL)isLast {
    return _cursor1 == _products.count;
}

- (void)next {
    if (_cursor1 < self.products.count) {
        _cursor1++;
    }
}

- (BOOL)isFirst {
    return  _cursor2 == -1;
}

- (void)previous {
    if (_cursor2 > -1) {
        _cursor2--;
    }
}

@end
