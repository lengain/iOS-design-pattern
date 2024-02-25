//
//  ProxySearcher.m
//  Proxy Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import "ProxySearcher.h"
#import "AccessValidator.h"
#import "RealSearcher.h"
#import "Logger.h"
@interface ProxySearcher ()

@property (nonatomic, strong) RealSearcher *searcher;
@property (nonatomic, strong) Logger *logger;

@end



@implementation ProxySearcher

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.searcher = [[RealSearcher alloc] init];
        self.logger = [[Logger alloc] init];
    }
    return self;
}

- (NSString *)doSearch:(NSString *)userId keyword:(NSString *)keyword {
    if ([AccessValidator validate:userId]) {
        NSString *result = [self.searcher doSearch:userId keyword:keyword];
        [self.logger log:userId];
        return result;
    }else {
        return nil;
    }
}

@end
