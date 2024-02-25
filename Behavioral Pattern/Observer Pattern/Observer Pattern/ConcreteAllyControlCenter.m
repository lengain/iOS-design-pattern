//
//  ConcreteAllyControlCenter.m
//  Observer Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import "ConcreteAllyControlCenter.h"

@implementation ConcreteAllyControlCenter
@synthesize players;
@synthesize allyName;

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.players = [NSMutableArray array];
    }
    return self;
}

- (void)join:(nonnull NSObject<Observer> *)obs {
    [self.players addObject:obs];
    NSLog(@"%@加入%@战队",obs.name, self.allyName);
}

- (void)quit:(nonnull NSObject<Observer> *)obs {
    [self.players removeObject:obs];
    NSLog(@"%@退出%@战队",obs.name, self.allyName);
}

- (void)notifyObaserver:(nonnull NSString *)name {
    NSLog(@"%@战队紧急通知, %@遭受敌人攻击", self.allyName, name);
    for (NSObject<Observer> * obs in self.players) {
        if (![obs.name isEqualToString:name]) {
            [obs help];
        }
    }
}



@end
