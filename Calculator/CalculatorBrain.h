//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Ya Zhuang on 13-10-24.
//  Copyright (c) 2013年 zhuangya. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject

- (void)pushOperand:(double)operand;
- (double)performOperation:(NSString *)operation;

@property (readonly) id program;  // show how to you `id` as a whole big type (for everything)

+ (double)runProgram:(id)program;
+ (NSString *)descriptionOfProgram:(id)program;




@end
