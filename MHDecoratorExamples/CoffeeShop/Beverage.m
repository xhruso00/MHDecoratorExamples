//
//  Beverage.m
//  MHDecoratorExamples
//
//  Created by Marek Hrusovsky on 22/08/14.
//  Copyright (c) 2014 Marek Hrusovsky. All rights reserved.
//

#import "Beverage.h"

@interface Beverage () {
  BeverageSize _size;
}

@end

@implementation Beverage

- (instancetype)initWithSize:(BeverageSize)size {
  self = [super init];
  if (self) {
    _size = size;
  }
  return self;
}

- (instancetype)init {
  return [self initWithSize:BeverageSizeUnknown];
}

- (double)cost {
  return 0;
}

- (NSString *)description {
  return @"Unknown beverage";
}

- (BeverageSize)size {
  return _size;
}

@end
