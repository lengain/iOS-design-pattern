//
//  Image.m
//  Bridge Pattern
//
//  Created by 童玉龙 on 2024/2/19.
//

#import "Image.h"

@implementation Image

- (void)parseFile:(NSString *)fileName {
    Matrix *m = [[Matrix alloc] init];
    [self.imp doPaint:m];
    NSLog(@"%@图像",self.name);
}

@end
