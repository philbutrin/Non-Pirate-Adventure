//
//  PFLViewController.h
//  Pirate
//
//  Created by Philip Locke on 4/30/14.
//  Copyright (c) 2014 Phil Locke. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PFLCharacter.h"

@interface PFLViewController : UIViewController

// INSTANCE VARIABLES
@property (nonatomic) CGPoint currentPoint;
@property (strong, nonatomic) NSArray *tiles;
@property (strong,nonatomic) PFLCharacter *character;
@property (strong,nonatomic) NSArray *map;


@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;

@property (strong, nonatomic) IBOutlet UILabel *characterStatsDisplay;

@property (strong, nonatomic) IBOutlet UILabel *healthStatDisplay;
@property (strong, nonatomic) IBOutlet UILabel *weaponStatDisplay;
@property (strong, nonatomic) IBOutlet UILabel *armorStatDisplay;
@property (strong, nonatomic) IBOutlet UILabel *itemStatDisplay;

@property (strong, nonatomic) IBOutlet UIButton *actionButtonText;

@property (strong, nonatomic) IBOutlet UILabel *storyDisplay;

@property (strong, nonatomic) IBOutlet UIButton *northButton;
@property (strong, nonatomic) IBOutlet UIButton *eastButton;
@property (strong, nonatomic) IBOutlet UIButton *southButton;
@property (strong, nonatomic) IBOutlet UIButton *westButton;

@property (strong, nonatomic) IBOutlet UIButton *map1;
@property (strong, nonatomic) IBOutlet UIButton *map2;
@property (strong, nonatomic) IBOutlet UIButton *map3;
@property (strong, nonatomic) IBOutlet UIButton *map4;
@property (strong, nonatomic) IBOutlet UIButton *map5;
@property (strong, nonatomic) IBOutlet UIButton *map6;
@property (strong, nonatomic) IBOutlet UIButton *map7;
@property (strong, nonatomic) IBOutlet UIButton *map8;
@property (strong, nonatomic) IBOutlet UIButton *map9;
@property (strong, nonatomic) IBOutlet UIButton *map10;
@property (strong, nonatomic) IBOutlet UIButton *map11;
@property (strong, nonatomic) IBOutlet UIButton *map12;
@property (strong, nonatomic) IBOutlet UIButton *toggleButton;


- (IBAction)toggleButtonPressed:(UIButton *)sender;

- (IBAction)actionButtonPressed:(UIButton *)sender;

- (IBAction)northButtonPressed:(UIButton *)sender;
- (IBAction)eastButtonPressed:(UIButton *)sender;
- (IBAction)southButtonPressed:(UIButton *)sender;
- (IBAction)westButtonPressed:(UIButton *)sender;

- (IBAction)resetButtonPressed:(UIButton *)sender;

@end
