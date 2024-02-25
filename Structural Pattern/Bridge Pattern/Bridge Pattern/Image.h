//
//  Image.h
//  Bridge Pattern
//
//  Created by 童玉龙 on 2024/2/19.
//

#import <Foundation/Foundation.h>
#import "ImageImp.h"
NS_ASSUME_NONNULL_BEGIN

@interface Image : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSObject <ImageImp> *imp;

- (void)parseFile:(NSString *)fileName;


@end

NS_ASSUME_NONNULL_END
