//
//  Folder.h
//  Composite Pattern
//
//  Created by 童玉龙 on 2024/2/19.
//

#import <Foundation/Foundation.h>
#import "AbstractFile.h"

NS_ASSUME_NONNULL_BEGIN

@interface Folder : NSObject <AbstractFile>

@property (nonatomic, strong) NSMutableArray <NSObject <AbstractFile>*> *children;

@end

NS_ASSUME_NONNULL_END
