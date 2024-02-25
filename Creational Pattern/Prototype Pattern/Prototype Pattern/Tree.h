//
//  Tree.h
//  Prototype Pattern
//
//  Created by 童玉龙 on 2024/2/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Tree : NSObject <NSCopying>

@property (nonatomic, strong) NSString *color;
@property (nonatomic, assign) CGFloat height;

@end

NS_ASSUME_NONNULL_END
