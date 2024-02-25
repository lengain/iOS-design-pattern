//
//  Player.m
//  Observer Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import "Player.h"
#import "AllyControlCenter.h"
@implementation Player
@synthesize name;

+ (instancetype)playWithName:(NSString *)name {
    Player *p = [[Player alloc] init];
    p.name = name;
    return p;
}

- (void)beAttacked:(nonnull NSObject<AllyControlCenter> *)acc {
    [acc notifyObaserver:self.name];
}

- (void)help { 
    NSLog(@"坚持住, %@来救你", self.name);
}

@end
