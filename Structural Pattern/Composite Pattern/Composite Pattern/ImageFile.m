//
//  ImageFile.m
//  Composite Pattern
//
//  Created by 童玉龙 on 2024/2/19.
//

#import "ImageFile.h"

@implementation ImageFile
@synthesize name;

- (void)add:(nonnull NSObject<AbstractFile> *)file { 
    NSLog(@"不支持该方法!");
}

- (nullable NSObject<AbstractFile> *)getChild:(NSInteger)i { 
    NSLog(@"不支持该方法!");
    return nil;
}

- (void)remove:(nonnull NSObject<AbstractFile> *)file {
    NSLog(@"不支持该方法!");
}

- (void)killVirus {
    NSLog(@"对图像%@进行杀毒", self.name);
}

@end
