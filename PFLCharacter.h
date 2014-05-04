//
//  PFLCharacter.h
//  Pirate
//
//  Created by Philip Locke on 4/30/14.
//  Copyright (c) 2014 Phil Locke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PFLWeapon.h"
#import "PFLArmor.h"
#import "PFLItem.h"

@interface PFLCharacter : NSObject

@property (strong,nonatomic) NSString *name;
@property (strong,nonatomic) PFLWeapon *weapon;
@property (strong,nonatomic) PFLArmor *armor;
@property (strong,nonatomic) PFLItem *item;
@property (nonatomic) int health;

@end
