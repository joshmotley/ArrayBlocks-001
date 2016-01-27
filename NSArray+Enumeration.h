//
//  NSArray+Enumeration.h
//  
//
//  Created by Joshua Motley on 1/26/16.
//
//

#import <Foundation/Foundation.h>

@interface NSArray (Enumeration)

-(NSArray *)arrayByApplyingBlock:(id(^) (id object))block;
-(NSArray *)elementsSatisfyingBlock:(id)block;

@end
