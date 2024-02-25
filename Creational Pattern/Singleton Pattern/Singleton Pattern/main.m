//
//  main.m
//  Singleton Pattern
//
//  Created by 童玉龙 on 2024/2/17.
//

#import <Foundation/Foundation.h>
#import "SingletonA.h"
#import "SingletonB.h"
#import "SingletonC.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableSet *set = [NSMutableSet set];
        for (NSInteger i = 0; i < 200; i++) {
            [[[NSThread alloc] initWithBlock:^{
                [set addObject:[SingletonA defaultSigleton]];
            }] start];
        }
        NSLog(@"%@", set);
    }
    return 0;
}
