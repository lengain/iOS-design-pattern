//
//  Folder.m
//  Composite Pattern
//
//  Created by 童玉龙 on 2024/2/19.
//

#import "Folder.h"

@implementation Folder
@synthesize name;

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.children = [NSMutableArray array];
    }
    return self;
}


- (void)add:(nonnull NSObject<AbstractFile> *)file {
    [self.children addObject:file];
}

- (nullable NSObject<AbstractFile> *)getChild:(NSInteger)i {
    return self.children[i];
}


- (void)remove:(nonnull NSObject<AbstractFile> *)file {
    [self.children removeObject:file];
}

- (void)killVirus {
    NSLog(@"对文件夹中%@进行杀毒", self.name);
    for (NSObject<AbstractFile> * file in self.children) {
        [file killVirus];
    }
}


@end

