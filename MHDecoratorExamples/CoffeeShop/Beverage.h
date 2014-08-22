//
//  Beverage.h
//  MHDecoratorExamples
//
//  Created by Marek Hrusovsky on 22/08/14.
//  Copyright (c) 2014 Marek Hrusovsky. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, BeverageSize) {
  BeverageSizeUnknown,
  BeverageSizeSmall,
  BeverageSizeMedium,
  BeverageSizeLarge
};

@interface Beverage : NSObject

- (instancetype)initWithSize:(BeverageSize)size;
- (double)cost;
- (NSString *)description;
- (BeverageSize)size;


@end
