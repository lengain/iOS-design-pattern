//
//  AngelBuilder.m
//  Builder Pattern
//
//  Created by 童玉龙 on 2024/2/18.
//

#import "AngelBuilder.h"

@implementation AngelBuilder

- (void)bulidCostume:(nonnull Actor *)actor {
    actor.type = @"天使";
}

- (void)bulidFace:(nonnull Actor *)actor {
    actor.face = @"漂亮";
}

- (void)bulidHairstyle:(nonnull Actor *)actor {
    actor.costume = @"白裙";
}

- (void)bulidSex:(nonnull Actor *)actor {
    actor.sex = @"女";
}

- (void)bulidType:(nonnull Actor *)actor {
    actor.hairStyle = @"披肩长发";
}

- (nonnull Actor *)createActor {
    return [[Actor alloc] init];
}

@end
