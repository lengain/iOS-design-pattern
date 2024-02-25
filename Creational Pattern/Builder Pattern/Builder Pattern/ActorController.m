//
//  ActorController.m
//  Builder Pattern
//
//  Created by 童玉龙 on 2024/2/18.
//

#import "ActorController.h"

@implementation ActorController

+ (Actor *)construct:(NSObject<ActorBuilder> *)ab {
    Actor *actor = [ab createActor];
    [ab bulidType:actor];
    [ab bulidSex:actor];
    [ab bulidFace:actor];
    [ab bulidCostume:actor];
    [ab bulidHairstyle:actor];
    return actor;
}

@end
