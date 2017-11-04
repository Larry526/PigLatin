//
//  main.m
//  PigLatin
//
//  Created by Larry Luk on 2017-11-03.
//  Copyright © 2017 App App Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+CustomString.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSString *sentence = @"Hello my name is Larry";
        NSLog(@"Original sentence: %@", sentence);
        [sentence stringByPigLatinization];
        
        
        

    
    }
    return 0;
}
