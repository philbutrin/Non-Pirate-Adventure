//
//  PFLFactory.h
//  Pirate
//
//  Created by Philip Locke on 4/30/14.
//  Copyright (c) 2014 Phil Locke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PFLCharacter.h"

@interface PFLFactory : NSObject

-(NSArray *)tiles;
-(PFLCharacter *)character;

@end
