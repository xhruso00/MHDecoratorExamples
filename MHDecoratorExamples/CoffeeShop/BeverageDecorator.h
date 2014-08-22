//
//  BeverageDecorator.h
//  MHDecoratorExamples
//
//  Created by Marek Hrusovsky on 22/08/14.
//  Copyright (c) 2014 Marek Hrusovsky. All rights reserved.
//

#import "Beverage.h"

@protocol BeverageDecoratorProtocol <NSObject>

@required
- (instancetype)initWithBeverage:(Beverage *)beverage;
- (NSString *)description;
- (double)cost;
@end

@interface BeverageDecorator : Beverage

- (instancetype)initWithBeverage:(Beverage *)beverage;


@end
