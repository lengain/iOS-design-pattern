//
//  ProductIterator.h
//  Iterator Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import <Foundation/Foundation.h>
#import "AbstractIterator.h"
#import "ProductList.h"
NS_ASSUME_NONNULL_BEGIN

@interface ProductIterator : NSObject <AbstractIterator>

@property (nonatomic, strong) NSObject <AbstractObjectList> *productList;
@property (nonatomic, strong) NSArray *products;
@property (nonatomic, assign) int cursor1;
@property (nonatomic, assign) int cursor2;

- (instancetype)initWithList:(NSObject <AbstractObjectList> *)productList;

@end

NS_ASSUME_NONNULL_END
