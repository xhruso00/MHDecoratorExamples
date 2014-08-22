//
//  Soya.h
//  MHDecoratorExamples
//
//  Created by Marek Hrusovsky on 22/08/14.
//  Copyright (c) 2014 Marek Hrusovsky. All rights reserved.
//

#import "BeverageDecorator.h"
@class Beverage;

@interface Soya : BeverageDecorator <BeverageDecoratorProtocol>

- (instancetype)initWithBeverage:(Beverage *)beverage;

@end