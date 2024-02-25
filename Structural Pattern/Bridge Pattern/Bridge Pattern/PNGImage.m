//
//  PNGImage.m
//  Bridge Pattern
//
//  Created by 童玉龙 on 2024/2/19.
//

#import "PNGImage.h"

@implementation PNGImage

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"png";
    }
    return self;
}

- (void)parseFile:(NSString *)fileName {
    [super parseFile:fileName];
    //png things
    
}

@end
