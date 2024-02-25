//
//  PurchaseRequest.h
//  Chain of Responsibility Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PurchaseRequest : NSObject

@property (nonatomic, assign) CGFloat amount;
@property (nonatomic, assign) NSInteger number;
@property (nonatomic, strong) NSString *purpose;

+ (instancetype)purchanseWithAmount:(CGFloat)amount number:(NSInteger)number purpose:(NSString *)purpose;

@end

NS_ASSUME_NONNULL_END
