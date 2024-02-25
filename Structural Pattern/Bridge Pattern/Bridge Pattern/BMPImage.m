//
//  BMPImage.m
//  Bridge Pattern
//
//  Created by 童玉龙 on 2024/2/19.
//

#import "BMPImage.h"

@implementation BMPImage

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"bmp";
    }
    return self;
}

- (void)parseFile:(NSString *)fileName {
    [super parseFile:fileName];
    //bmp things
    
}

@end
