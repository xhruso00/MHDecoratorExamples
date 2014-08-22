//
//  main.m
//  MHDecoratorExamples
//
//  Created by Marek Hrusovsky on 22/08/14.
//  Copyright (c) 2014 Marek Hrusovsky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Beverage.h"
#import "Espresso.h"
#import "Milk.h"
#import "Soya.h"

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    
    Beverage *beverage = [[Beverage alloc] init];
    
    NSLog(@"Description %@, cost %f",[beverage description], [beverage cost]);
    
    Beverage *espresso = [[Espresso alloc] initWithSize:BeverageSizeLarge];
    NSLog(@"Description %@, cost %f",[espresso description], [espresso cost]);
    
    Beverage *espressoWithMilk = [[Milk alloc] initWithBeverage:espresso];
    NSLog(@"Description %@, cost %f",[espressoWithMilk description], [espressoWithMilk cost]);
    
    Beverage *espressoWithSoya = [[Soya alloc] initWithBeverage:espresso];
    NSLog(@"Description %@, cost %f",[espressoWithSoya description], [espressoWithSoya cost]);
    
    Beverage *espressoWithMilkSoya = [[Soya alloc] initWithBeverage:espressoWithMilk];
    NSLog(@"Description %@, cost %f",[espressoWithMilkSoya description], [espressoWithMilkSoya cost]);
    
    Beverage *espressoWithMilkSoyaMilk = [[Milk alloc] initWithBeverage:espressoWithMilkSoya];
    NSLog(@"Description %@, cost %f",[espressoWithMilkSoyaMilk description], [espressoWithMilkSoyaMilk cost]);
  }
  return 0;
}
