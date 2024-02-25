//
//  AllyControlCenter.h
//  Observer Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import <Foundation/Foundation.h>
#import "Observer.h"
NS_ASSUME_NONNULL_BEGIN


@protocol AllyControlCenter <NSObject>

@property (nonatomic, strong) NSString *allyName;
@property (nonatomic, strong) NSMutableArray *players;

- (void)join:(NSObject <Observer>*)obs;
- (void)quit:(NSObject <Observer>*)obs;

- (void)notifyObaserver:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
