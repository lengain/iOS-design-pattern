//
//  ViewController.h
//  Proxy Pattern
//
//  Created by 童玉龙 on 2024/2/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ViewControllerDelegate <NSObject>

- (void)receiveAction;

@end

@interface ViewController : NSObject

@property (nonatomic, weak) id <ViewControllerDelegate> delegate;

- (void)sendAction;

@end

NS_ASSUME_NONNULL_END
