//
//  ImageImp.h
//  Bridge Pattern
//
//  Created by 童玉龙 on 2024/2/19.
//

#import <Foundation/Foundation.h>
#import "Matrix.h"


NS_ASSUME_NONNULL_BEGIN

@protocol ImageImp <NSObject>

@property (nonatomic, strong) Matrix *m;

- (void)doPaint:(Matrix *)m;

@end


NS_ASSUME_NONNULL_END
