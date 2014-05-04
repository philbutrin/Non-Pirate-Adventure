//
//  PFLViewController.m
//  Pirate
//
//  Created by Philip Locke on 4/30/14.
//  Copyright (c) 2014 Phil Locke. All rights reserved.
//

#import "PFLViewController.h"
#import "PFLFactory.h"
#import "PFLTile.h"
#import "PFLCharacter.h"

@interface PFLViewController ()

@end

@implementation PFLViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self initializeGame];
    
}



- (void)initializeGame{
    PFLFactory *factory = [[PFLFactory alloc] init];
    self.tiles = [factory tiles];
    self.character = [factory character];
    self.currentPoint = CGPointMake(0, 0);
    NSString *charName = [self getName];
    self.characterStatsDisplay.text = [NSString stringWithFormat:@"%@'s Stats", charName];

    [self initializeMap];
    [self updateTile];
}



-(NSString *)getName
{
//    UIAlertView *nameRequest = [[UIAlertView alloc] initWithTitle:@"Hello!" message:@"What is your name?" delegate:nil cancelButtonTitle:@"Let's Go!" otherButtonTitles: nil];
//    [nameRequest setAlertViewStyle:UIAlertViewStylePlainTextInput];
//    [nameRequest show];
//    UITextField *name = [nameRequest textFieldAtIndex:0];
//    return(name.text);

    return(@"Blobbo");
    
}



                //internal helper method to update tile
- (void)updateTile
{           //give me my the current x array, and within that the current y object
    //NSLog(@"x = %f y = %f",self.currentPoint.x, self.currentPoint.y);
    PFLTile *tileModel = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    self.backgroundImageView.image = tileModel.bgImage;
    
    if (tileModel.actionCount > 0) {
        self.storyDisplay.text = tileModel.story;
        [self.actionButtonText setTitle:tileModel.actionButtonName forState:UIControlStateNormal];
  
    } else {
        self.storyDisplay.text = tileModel.alt_story;
        [self.actionButtonText setTitle:tileModel.alt_actionButtonName forState:UIControlStateNormal];
    }
    
    self.healthStatDisplay.text = [NSString stringWithFormat:@"%d", self.character.health];
    self.armorStatDisplay.text = self.character.armor.name;
    self.weaponStatDisplay.text = self.character.weapon.name;
    self.itemStatDisplay.text = self.character.item.name;

    [self updateMap];
    
            // LOOK INTO COMPARING TO ARRAY SIZE INSTEAD OF CONSTANT
    if (self.currentPoint.x == 0) {
        self.westButton.hidden = YES;
    } else {
        self.westButton.hidden = NO;
    }

    if (self.currentPoint.x == 3) {
        self.eastButton.hidden = YES;
    } else {
        self.eastButton.hidden = NO;
    }

    if (self.currentPoint.y == 0) {
        self.southButton.hidden = YES;
    } else {
        self.southButton.hidden = NO;
    }

    if (self.currentPoint.y == 2) {
        self.northButton.hidden = YES;
    } else {
        self.northButton.hidden = NO;
    }
}



- (void)initializeMap{
    NSArray *mapCol1 = [[NSArray alloc] initWithObjects:self.map1, self.map2, self.map3, nil];
    NSArray *mapCol2 = [[NSArray alloc] initWithObjects:self.map4, self.map5, self.map6, nil];
    NSArray *mapCol3 = [[NSArray alloc] initWithObjects:self.map7, self.map8, self.map9, nil];
    NSArray *mapCol4 = [[NSArray alloc] initWithObjects:self.map10, self.map11, self.map12, nil];
    
    NSArray *map = [[NSArray alloc] initWithObjects:mapCol1, mapCol2, mapCol3, mapCol4, nil];
    self.map = map;

}



- (void)updateMap{
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 3; j++){
            UIButton *temp = [[self.map objectAtIndex:i] objectAtIndex:j];
            [temp setAlpha:0.5];
        }
    }
    UIButton *locButton = [[self.map objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    [locButton setAlpha:0.9];
}



- (void)dead
{    
    [self.actionButtonText setTitle:@"Dude, you're dead." forState:UIControlStateNormal];
    self.actionButtonText.enabled = NO;
    self.northButton.hidden = YES;
    self.southButton.hidden = YES;
    self.eastButton.hidden = YES;
    self.westButton.hidden = YES;
    self.storyDisplay.text = @"I guess some people weren't meant to be adventurers... :-(";
    self.backgroundImageView.image = [UIImage imageNamed:@"tombstone-you.jpg"];
}



            // Removed boundary checks because hidden buttons now cover that
- (IBAction)northButtonPressed:(UIButton *)sender {
        self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y+1);
        [self updateTile];
}

- (IBAction)eastButtonPressed:(UIButton *)sender {
        self.currentPoint = CGPointMake(self.currentPoint.x+1, self.currentPoint.y);
        [self updateTile];
}

- (IBAction)southButtonPressed:(UIButton *)sender {
        self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y-1);
        [self updateTile];
}

- (IBAction)westButtonPressed:(UIButton *)sender {
        self.currentPoint = CGPointMake(self.currentPoint.x-1, self.currentPoint.y);
        [self updateTile];
}

- (IBAction)resetButtonPressed:(UIButton *)sender {
        self.actionButtonText.enabled = YES;
        [self initializeGame];
}



            // toggleButton now used to "Show Map" and "Hide Map" instead of "Toggle Map"
- (IBAction)toggleButtonPressed:(UIButton *)sender {
    if (self.map1.hidden) {
        [self.toggleButton setTitle:@"Hide Map" forState:UIControlStateNormal];
        for (int i = 0; i < 4; i++) {
            for (int j = 0; j < 3; j++){
                UIButton *temp = [[self.map objectAtIndex:i] objectAtIndex:j];
                temp.hidden = NO;
            }
        }
    } else {
        [self.toggleButton setTitle:@"Show Map" forState:UIControlStateNormal];
        for (int i = 0; i < 4; i++) {
            for (int j = 0; j < 3; j++){
                UIButton *temp = [[self.map objectAtIndex:i] objectAtIndex:j];
                temp.hidden = YES;
            }
        }
    }
}



- (void) doBoss
{
    PFLTile *tileModel = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];

    if ([self.character.item.name  isEqual: @"Orb of Invincibility"])
    {
        [tileModel.alt_alertView show];
        [self.actionButtonText setTitle:@"All Hail the Conquering Hero!" forState:UIControlStateNormal];
        self.actionButtonText.enabled = NO;
        self.northButton.hidden = YES;
        self.southButton.hidden = YES;
        self.eastButton.hidden = YES;
        self.westButton.hidden = YES;
        self.storyDisplay.text = @"Stepping over The Boss's lifeless body, you walk into the cave he called home and you find an unimaginable trove of gems and gold and other treasure.  I guess this'll show those folks back home who said you'd never amount to anything!";
        self.backgroundImageView.image = [UIImage imageNamed:@"treasure2.png"];

        
    } else {
        
        [tileModel.alertView show];
        self.character.health += tileModel.healthEffect;
        [self dead];
        
    }

}


- (IBAction)actionButtonPressed:(UIButton *)sender
{
    
    PFLTile *tileModel = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    
    if (self.currentPoint.x == 3 && self.currentPoint.y == 1) {
        
        [self doBoss];
        
    } else {
        
        if (self.currentPoint.x == 0 && self.currentPoint.y == 1) {

            if ([self.character.item.name  isEqual: @"Orb Holder"])
            {
                UIAlertView *getOrbAlert = [[UIAlertView alloc] initWithTitle:@"Amazing!" message:@"Now you realize what you were reminded of when you picked up that box with the indentations inside. They are just the right size for the silver orb. Holding the box open, you place it over the orb and shut the box with the orb stored safely inside, and you place the box in your backpack." delegate:nil cancelButtonTitle:@"Woo Hoo!" otherButtonTitles: nil];
                [getOrbAlert show];
                self.character.item = tileModel.item;
                
            } else {
                if (tileModel.actionCount > 0)
                {
                [tileModel.alertView show];
                self.character.health += tileModel.healthEffect;
                tileModel.actionCount++;
                } else {
                    
                    [tileModel.alt_alertView show];
                }
            }
        
        } else {
            
            if (tileModel.actionCount > 0)
                {
                    [tileModel.alertView show];
                    
                    if (tileModel.healthEffect != 0) {
                        self.character.health += tileModel.healthEffect;
                    }
                    if (tileModel.armor != nil){
                        self.character.armor = tileModel.armor;
                    }
                    if (tileModel.weapon != nil){
                        self.character.weapon = tileModel.weapon;
                    }
                    
                    if ([tileModel.item.name isEqual:@"Orb Holder"])
                    {
                    self.character.item = tileModel.item;
                }

            } else {
                
                [tileModel.alt_alertView show];
            }
        }
        
        tileModel.actionCount--;
        [self updateTile];
        
        if (self.character.health <= 0) {
            [self dead];
        }
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
