//
//  Soya.m
//  MHDecoratorExamples
//
//  Created by Marek Hrusovsky on 22/08/14.
//  Copyright (c) 2014 Marek Hrusovsky. All rights reserved.
//

#import "Soya.h"

@interface Soya() {

}
@end

@implementation Soya

- (instancetype)initWithBeverage:(Beverage *)beverage {
  self = [super initWithBeverage:beverage];
  if (self) {

  }
  return self;
}

- (double)cost {
  double additionalCost = 0;
  switch ([super size]) {
    case BeverageSizeSmall:
      additionalCost = 0.10f;
      break;
    case BeverageSizeMedium:
      additionalCost = 0.15f;
      break;
    case BeverageSizeLarge:
      additionalCost = 0.20f;
      break;
    default:
      break;
  }
  return [super cost] + additionalCost;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"%@, soya",[super description]];
}

@end