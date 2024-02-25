//
//  AbstractFile.h
//  Composite Pattern
//
//  Created by 童玉龙 on 2024/2/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol AbstractFile <NSObject>

@property (nonatomic, strong) NSString *name;

- (void)add:(NSObject <AbstractFile>*)file;
- (void)remove:(NSObject <AbstractFile>*)file;
- (nullable NSObject <AbstractFile>*)getChild:(NSInteger)i;
- (void)killVirus;

@end

NS_ASSUME_NONNULL_END
