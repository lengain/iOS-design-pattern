//
//  HeroBuilder.m
//  Builder Pattern
//
//  Created by 童玉龙 on 2024/2/18.
//

#import "HeroBuilder.h"

@implementation HeroBuilder

- (void)bulidCostume:(nonnull Actor *)actor { 
    actor.type = @"英雄";
}

- (void)bulidFace:(nonnull Actor *)actor { 
    actor.face = @"英俊";
}

- (void)bulidHairstyle:(nonnull Actor *)actor { 
    actor.costume = @"盔甲";
}

- (void)bulidSex:(nonnull Actor *)actor { 
    actor.sex = @"男";
}

- (void)bulidType:(nonnull Actor *)actor { 
    actor.hairStyle = @"飘逸";
}

- (nonnull Actor *)createActor { 
    return [[Actor alloc] init];
}

@end
