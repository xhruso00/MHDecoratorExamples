//
//  BeverageDecorator.m
//  MHDecoratorExamples
//
//  Created by Marek Hrusovsky on 22/08/14.
//  Copyright (c) 2014 Marek Hrusovsky. All rights reserved.
//

#import "BeverageDecorator.h"

@interface BeverageDecorator() {
  Beverage *_beverage;
}

@end

@implementation BeverageDecorator

- (instancetype)initWithBeverage:(Beverage *)beverage {
  self = [super init];
  if (self) {
    _beverage = beverage;
  }
  return self;
}

- (BeverageSize)size {
  return [_beverage size];
}

- (double)cost {
  return [_beverage cost];
}

- (NSString *)description {
  return [NSString stringWithFormat:@"%@",[_beverage description]];
}

@end
