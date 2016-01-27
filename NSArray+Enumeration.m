//
//  NSArray+Enumeration.m
//  
//
//  Created by Joshua Motley on 1/26/16.
//
//

#import "NSArray+Enumeration.h"

@implementation NSArray (Enumeration)

-(NSArray *)arrayByApplyingBlock:(id (^) (id object))block{

    
    NSMutableArray *new = [[NSMutableArray alloc] init];
    
    for (id object in self)
    {
        [new addObject:block(object)];
    }

    return new;
};
-(NSArray *)elementsSatisfyingBlock:(id)block{
    
    NSPredicate *predicate = [NSPredicate predicateWithBlock:block];
    
    NSArray *filteredResultsArray = [self filteredArrayUsingPredicate:predicate];
    return filteredResultsArray;
};

@end
