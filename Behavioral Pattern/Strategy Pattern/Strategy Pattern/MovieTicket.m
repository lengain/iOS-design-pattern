//
//  MovieTicket.m
//  Strategy Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import "MovieTicket.h"

@implementation MovieTicket

- (CGFloat)calculatePrice {
    return [self.discount calculate:self.price];
}

@end
