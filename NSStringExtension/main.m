//
//  main.m
//  NSStringExtension
//
//  Created by Arun on 2019-05-31.
//  Copyright © 2019 LogicIO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Kale Chips = aleKay ipsChay
        //Another Word = ?
        NSString* myWords = @"Kale Chips";
        NSLog(@"%@",[myWords stringByPigLatinization]);
        
    }
    return 0;
}
