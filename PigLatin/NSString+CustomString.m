//
//  NSString+CustomString.m
//  PigLatin
//
//  Created by Larry Luk on 2017-11-03.
//  Copyright © 2017 App App Studio. All rights reserved.
//

#import "NSString+CustomString.h"

@implementation NSString (CustomString)

-(NSString *)stringByPigLatinization {
    
    NSString *sentenceRaw = self;
    NSArray *wordsinSentence = [sentenceRaw componentsSeparatedByString:@" "];
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"AEIOUaeiou"];
    NSMutableArray *newSentence = [[NSMutableArray alloc] init];
    NSString *newWord;

    [newSentence addObject:@"Piglatin sentence:"];
    
    for (NSString *word in wordsinSentence) {
        
        unichar firstChar = [word characterAtIndex:0];
        
        if ([vowels characterIsMember:firstChar]) {
            newWord = [word stringByAppendingString:@"ay"];
            [newSentence addObject:newWord];
    
        } else {
            
            NSString *firstLetter = [word substringToIndex:1];
            firstLetter = [firstLetter lowercaseString];
            newWord = [word stringByAppendingString:firstLetter];
            newWord = [newWord substringFromIndex:1];
            newWord = [newWord stringByAppendingString:@"ay"];
            newWord = [NSString stringWithFormat:@"%@%@",[[newWord substringToIndex:1]uppercaseString],[newWord substringFromIndex:1]];
            
            [newSentence addObject:newWord];
                        
        }
        
        
    }
    
    NSString *finalSetence = [newSentence componentsJoinedByString: @" "];
    NSLog(@"%@", finalSetence);

  
    return self;
}

@end
