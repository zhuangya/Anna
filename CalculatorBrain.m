//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Ya Zhuang on 13-10-24.
//  Copyright (c) 2013年 zhuangya. All rights reserved.
//

#import "CalculatorBrain.h"

@interface CalculatorBrain()

@property (nonatomic, strong) NSMutableArray *operandStack;

@end


@implementation CalculatorBrain
@synthesize operandStack = _operandStack;

- (NSMutableArray *)operandStack {
    if(_operandStack == nil) _operandStack = [[NSMutableArray alloc] init];
    return _operandStack;
}

- (void)pushOperand:(double)operand {
    [self.operandStack addObject:[NSNumber numberWithDouble:operand]];
    
    
}

- (double)popOperand {
    NSNumber *operandObject = [self.operandStack lastObject];
    if(operandObject != nil)
    [self.operandStack removeLastObject];
    return [operandObject doubleValue];
}

- (double)performOperation:(NSString *)operation {
    double result = 0;
    
    if([operation isEqualToString:@"+"]) {
        result = [self popOperand] + [self popOperand];
    } else if([@"*" isEqualToString:operation]) {
        result = [self popOperand] * [self popOperand];
    } else if([@"-" isEqualToString:operation]) {
        double numberB = [self popOperand];
        result = [self popOperand] - numberB;
    } else if([@"/" isEqualToString:operation]) {
        double numberB = [self popOperand];
        result = [self popOperand] / numberB;
    }
    
    return result;
}
@end
