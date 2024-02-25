//
//  IgoChessmanFactory.h
//  Flyweight Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import <Foundation/Foundation.h>
#import "IgoChessman.h"
NS_ASSUME_NONNULL_BEGIN

@interface IgoChessmanFactory : NSObject

@property (nonatomic, strong) NSMutableDictionary <NSString *,NSObject <IgoChessman>*>*cache;

+ (instancetype)defaultFactory;

- (NSObject <IgoChessman>*)getIgoChessman:(NSString *)color;

@end

NS_ASSUME_NONNULL_END
