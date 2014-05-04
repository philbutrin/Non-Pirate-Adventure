//
//  PFLTile.h
//  Pirate
//
//  Created by Philip Locke on 4/30/14.
//  Copyright (c) 2014 Phil Locke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PFLWeapon.h"
#import "PFLArmor.h"
#import "PFLItem.h"

@interface PFLTile : NSObject

@property (strong,nonatomic) NSString *story;
@property (strong,nonatomic) UIImage *bgImage;
@property (strong,nonatomic) NSString *actionButtonName;
@property (strong,nonatomic) UIAlertView *alertView;
@property (strong,nonatomic) PFLWeapon *weapon;
@property (strong,nonatomic) PFLArmor *armor;
@property (strong,nonatomic) PFLItem *item;
@property (nonatomic) int healthEffect;

@property (nonatomic) int actionCount;
@property (strong,nonatomic) NSString *alt_story;
@property (strong,nonatomic) NSString *alt_actionButtonName;
@property (strong,nonatomic) UIAlertView *alt_alertView;




@end
