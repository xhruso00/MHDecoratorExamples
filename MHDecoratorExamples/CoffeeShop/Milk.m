//
//  Milk.m
//  MHDecoratorExamples
//
//  Created by Marek Hrusovsky on 22/08/14.
//  Copyright (c) 2014 Marek Hrusovsky. All rights reserved.
//

#import "Milk.h"
#import "Beverage.h"

@implementation Milk

- (instancetype)initWithBeverage:(Beverage *)beverage {
  self = [super initWithBeverage:beverage];
  if (self) {
    
  }
  return self;
}

- (double)cost {
  double additionalCost = 0.0f;
  switch ([super size]) {
    case BeverageSizeSmall:
      additionalCost = 0.25f;
      break;
    case BeverageSizeMedium:
      additionalCost = 0.27f;
      break;
    case BeverageSizeLarge:
      additionalCost = 0.29f;
      break;
    default:
      break;
  }
  return [super cost] + additionalCost;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"%@, milk",[super description]];
}


@end
