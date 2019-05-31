//
//  NSString+PigLatin.m
//  NSStringExtension
//
//  Created by Arun on 2019-05-31.
//  Copyright © 2019 LogicIO. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

-(NSString *)stringByPigLatinization {
    
    NSCharacterSet *vowelCharSet = [NSCharacterSet characterSetWithCharactersInString:@"aeiouyAEIOU"];
    NSMutableString* phrase = [[NSMutableString alloc] initWithCapacity:self.length];
    
    NSArray* words = [self componentsSeparatedByString:@" "];
    for(NSString *word in words) {
        NSRange range = [word rangeOfCharacterFromSet:vowelCharSet];
        //NSLog(@"Range: (Location:%lu, Length:%lu)",range.location,range.length);
        NSString * finalString;
        
        if(range.location > 0 ) {
            NSString* prefix = [word substringToIndex:range.location];
            NSString* suffix = [word substringFromIndex:range.location];
            finalString = [NSString stringWithFormat:@"%@%@ay",suffix,prefix];
        } else {
            finalString = [NSString stringWithFormat:@"%@way",word];
        }
        [phrase appendFormat:@"%@ ",finalString];
       
    }
    return [phrase stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

@end
