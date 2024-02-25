//
//  IgoChessmanFactory.m
//  Flyweight Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import "IgoChessmanFactory.h"
#import "WhiteIgoChessman.h"
#import "BlackIgoChessman.h"
@implementation IgoChessmanFactory

+ (instancetype)defaultFactory {
    static IgoChessmanFactory *fact = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        fact = [[IgoChessmanFactory alloc] init];
    });
    return fact;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.cache = [NSMutableDictionary dictionary];
        
        self.cache[@"b"] = [[BlackIgoChessman alloc] init];
        self.cache[@"w"] = [[WhiteIgoChessman alloc] init];
    }
    return self;
}


- (NSObject<IgoChessman> *)getIgoChessman:(NSString *)color {
    return self.cache[color];
}

@end
