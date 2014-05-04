//
//  PFLFactory.m
//  Pirate
//
//  Created by Philip Locke on 4/30/14.
//  Copyright (c) 2014 Phil Locke. All rights reserved.
//

#import "PFLFactory.h"
#import "PFLTile.h"


@implementation PFLFactory

-(NSArray *)tiles{
    
                // COLUMN 1

    PFLTile *tile1 = [[PFLTile alloc] init];
    tile1.story = @"You are standing at the door of a wooden cabin in the middle of a vast forest.";
    tile1.actionButtonName = @"Knock on the cabin door.";
    tile1.alertView = [[UIAlertView alloc] initWithTitle:@"Hello?" message:@"No one answers and the door is locked. You must venture into the forest." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    tile1.bgImage = [UIImage imageNamed:@"tile1.jpg"];
    
    tile1.actionCount = 1;
    tile1.alt_story = @"You are standing at the door of a wooden cabin in the middle of a vast forest.";
    tile1.alt_actionButtonName = @"Knock on the cabin door.";
    tile1.alt_alertView = [[UIAlertView alloc] initWithTitle:@"Hello?" message:@"There's still no one here. Keep knocking and you'll just hurt your knuckles." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    
    
    PFLTile *tile2 = [[PFLTile alloc] init];
    tile2.story = @"You are standing in a clearing in the forest and you hear the sound of running water nearby. You see something shiny on the ground in the middle of the clearing.";
    tile2.actionButtonName = @"Pick up the shiny object.";
    tile2.alertView = [[UIAlertView alloc] initWithTitle:@"Ouch!" message:@"The object is incredibly hot to the touch. It looks like a small silver orb. You had best leave it here... for now." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    
                //PERHAPS CREATE WEAPON.M FUNCTION RETURNS WEAPON OF TYPE X?
    PFLItem *item2 = [[PFLItem alloc] init];
    item2.name = @"Orb of Invincibility";
    tile2.item = item2;
    tile2.healthEffect = -10;
    tile2.bgImage = [UIImage imageNamed:@"tile2.jpg"];
    
    tile2.actionCount = 1;
    tile2.alt_story = @"You are standing in a clearing in the forest and you hear the sound of running water nearby.";
    tile2.alt_actionButtonName = @"Dance a jig.";
    tile2.alt_alertView = [[UIAlertView alloc] initWithTitle:@"Jiggity Jig!" message:@"Dance like a pig!" delegate:nil cancelButtonTitle:@"Go home or go big!" otherButtonTitles: nil];

    
    PFLTile *tile3 = [[PFLTile alloc] init];
    tile3.story = @"You see a suit of sturdy armor lying on the forest floor, the bones of its previous owner lie dry and white inside it. You hear water somewhere nearby.";
    tile3.actionButtonName = @"Pick up armor and put it on.";
    tile3.alertView = [[UIAlertView alloc] initWithTitle:@"Gross!" message:@"The armor is full of worms, beetles, and other unpleasant things. But you easily shake them out and don the armor." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    PFLArmor *armor3 = [[PFLArmor alloc] init];
    armor3.name = @"Light Steel Armor";
    armor3.protection = 10;
    tile3.armor = armor3;
    tile3.bgImage = [UIImage imageNamed:@"tile3.jpg"];
    
    tile3.actionCount = 1;
    tile3.alt_story = @"There is a pile of old, dry bones lying on the ground.";
    tile3.alt_actionButtonName = @"Touch the bones.";
    tile3.alt_alertView = [[UIAlertView alloc] initWithTitle:@"Gross!" message:@"Why would you want to go touching some old bones?" delegate:nil cancelButtonTitle:@"Get outta here." otherButtonTitles: nil];


    //    Alternate way to do this:
    //    NSArray *firstColumn = [[NSArray alloc] initWithObjects:tile1, tile2, tile3, nil];
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
                // COLUMN 2
    
    PFLTile *tile4 = [[PFLTile alloc] init];
    tile4.story = @"The trees are so dense here that the sun barely shines through and all sound is muted, but you see a glow coming from the hollow of an old and long-dead tree.";
    tile4.actionButtonName = @"Reach into the hollow.";
    tile4.alertView = [[UIAlertView alloc] initWithTitle:@"Cool!" message:@"You pull out a dagger whose handle is set with white gemstones that seem to be lit from within. It looks very sharp" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    tile4.healthEffect = 0;
    PFLWeapon *weapon4 = [[PFLWeapon alloc] init];
    weapon4.name = @"The Dagger of Starlight";
    weapon4.damage = 50;
    tile4.weapon = weapon4;
    tile4.bgImage = [UIImage imageNamed:@"tile4.png"];
    
    tile4.actionCount = 1;
    tile4.alt_story = @"The trees are so dense here that the sun barely shines through and all sound is muted.  All you see around you are trees and darkness.";
    tile4.alt_actionButtonName = @"Do something.";
    tile4.alt_alertView = [[UIAlertView alloc] initWithTitle:@"Nope." message:@"Nothing to do here." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];

    
    PFLTile *tile5 = [[PFLTile alloc] init];
    tile5.story = @"You are standing at the bend of a stream that flows to the east and south from here. The sun is shining brightly and you feel quite thirsty.";
    tile5.actionButtonName = @"Drink from the stream.";
    tile5.alertView = [[UIAlertView alloc] initWithTitle:@"Ahhhhh!" message:@"The water is cool and refreshing, and you feel quite invigorated. Perhaps there is no more danger in this forest after all..." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    tile5.healthEffect = 20;
    tile5.bgImage = [UIImage imageNamed:@"tile5.jpg"];
    
    tile5.actionCount = 1;  // could be 3, but that would complicate the logic
    tile5.alt_story = @"You are standing at the bend of a stream that flows to the east and south from here. Oddly, although the water looks clear and clean and delicious, you don't feel thirsty.";
    tile5.alt_actionButtonName = @"Drink from the stream.";
    tile5.alt_alertView = [[UIAlertView alloc] initWithTitle:@"Why?" message:@"Seriously... You don't feel thirsty at all anymore." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];

    
    PFLTile *tile6 = [[PFLTile alloc] init];
    tile6.story = @"A stream burbles happily to the north and south, and someone has built a small stone bridge here.  You hear a noise coming from underneath the bridge, but you can't easily see what it is...";
    tile6.actionButtonName = @"Look under the bridge.";
    tile6.alertView = [[UIAlertView alloc] initWithTitle:@"Ack!" message:@"You startle a pair of mischievous pixies who zoom past your head, scratching your cheeks with their small-but-sharp fingernails." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    tile6.healthEffect = -10;
    tile6.bgImage = [UIImage imageNamed:@"tile6.jpg"];
    
    tile6.actionCount = 1;
    tile6.alt_story = @"A stream burbles happily to the north and south, and someone has built a small stone bridge here.  It's a nice bridge.";
    tile6.alt_actionButtonName = @"Walk across the bridge.";
    tile6.alt_alertView = [[UIAlertView alloc] initWithTitle:@"Wheeeee!" message:@"Well, that was a nice walk, wasn't it?." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];



//    Alternate way to do this:
//    NSArray *secondColumn = [[NSArray alloc] initWithObjects:tile4, tile5, tile6, nil];
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
                // COLUMN 3
    
    PFLTile *tile7 = [[PFLTile alloc] init];
    tile7.story = @"Whoa! You step out of the trees and nearly fall off a cliff. A stream cascades over the edge in a waterfall, tumbling down into a deep canyon.  You feel a twitching between your shoulderblades and have a sudden urge to leap over the edge.";
    tile7.actionButtonName = @"Do a swan dive off the cliff.";
    tile7.alertView = [[UIAlertView alloc] initWithTitle:@"WTF?!" message:@"Your body slams on the rocks at the base of the cliff. Now you're dead. Well done.  Did you think you'd suddenly grow wings or something?" delegate:nil cancelButtonTitle:@"R.I.P." otherButtonTitles: nil];
    tile7.healthEffect = -1000;
    tile7.bgImage = [UIImage imageNamed:@"tile7.jpg"];
    
                // ALT STORY WILL NEVER GET USED HERE, BECAUSE ONCE THEY JUMP OFF THE CLIFF, THEY'RE DEAD.  NEED TO FIGURE THIS OUT.
    tile7.actionCount = 1;
    tile7.alt_story = @"Whoa! You step out of the trees and nearly fall off a cliff. A stream cascades over the edge in a waterfall, tumbling down into a deep canyon.  It sure looks like a long way down...";
    tile7.alt_actionButtonName = @"Approach the edge of the canyon.";
    tile7.alt_alertView = [[UIAlertView alloc] initWithTitle:@"Whoa!" message:@"That sure is steep, isn't it.  Best to just keep on going." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    
    
    PFLTile *tile8 = [[PFLTile alloc] init];
    tile8.story = @"A stream runs to your west and south. At this bend, the bank is steep and covered in brambles. You notice a length of chain lying inexplicably on the ground. It trails down through the brambles.";
    tile8.actionButtonName = @"Yank the chain.";
    tile8.alertView = [[UIAlertView alloc] initWithTitle:@"Nice!" message:@"You have to pull with all your might, but eventually you discover that the chain is tied to a suit of armor hidden in the brambles. You do not recognize the material. Perhaps it is that 'titanium' you keep reading about in Armor Monthly." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    PFLArmor *armor8 = [[PFLArmor alloc] init];
    armor8.name = @"Titanium Armor";
    armor8.protection = 40;
    tile8.armor = armor8;
    tile8.bgImage = [UIImage imageNamed:@"tile8.jpg"];
    
    tile8.actionCount = 1;
    tile8.alt_story = @"A stream runs to your west and south. At this bend, the bank is steep and covered in brambles. There is a length of chain lying on the ground.";
    tile8.alt_actionButtonName = @"Yank the chain.";
    tile8.alt_alertView = [[UIAlertView alloc] initWithTitle:@"Clank." message:@"The chain makes a clinky, clanky sound." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];

    
    PFLTile *tile9 = [[PFLTile alloc] init];
    tile9.story = @"There seems to be nothing here but a field of grass.  There are no trees, no stream, no rocks, no path... Just nothing.";
    tile9.actionButtonName = @"Meditate on the nothingness.";
    tile9.alertView = [[UIAlertView alloc] initWithTitle:@"Sigh..." message:@"As you contemplate the nothingness of your surroundings and the ultimate impermanence of all things, you feel a deep relaxation, and you have a sense that perhaps good fortune lies in your future." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    tile9.healthEffect = 20;
    tile9.bgImage = [UIImage imageNamed:@"tile9.jpg"];
    
    tile9.actionCount = 1;
    tile9.alt_story = @"There seems to be nothing here but a field of grass.  There are no trees, no stream, no rocks, no path... Just nothing.";
    tile9.alt_actionButtonName = @"Meditate on the nothingness.";
    tile9.alt_alertView = [[UIAlertView alloc] initWithTitle:@"Whoosh." message:@"A breeze whooshes by you, rousing you from your reverie.  Probably best to keep on moving." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];



    
//    Alternate way to do this:
//    NSArray *thirdColumn = [[NSArray alloc] initWithObjects:tile7, tile8, tile9, nil];
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
                // COLUMN 4
    
    PFLTile *tile10 = [[PFLTile alloc] init];
    tile10.story = @"The path here runs along the edge of a deep canyon. Along the path you see that a few trees have been chopped down. Up a little further ahead, you see a double-headed axe stuck into a tree.";
    tile10.actionButtonName = @"Pick up the axe.";
    tile10.alertView = [[UIAlertView alloc] initWithTitle:@"Whoa!" message:@"The axe is incredibly heavy, but as you grasp it you feel a surge of strength flow through your arms and you lift it with little difficulty.  You feel powerful. You feel brave. You feel invincible!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    tile10.healthEffect = 0;
    PFLWeapon *weapon10 = [[PFLWeapon alloc] init];
    weapon10.name = @"The Boss's Battleaxe";
    weapon10.damage = 1000;
    tile10.weapon = weapon10;
    tile10.healthEffect = 500;
    tile10.bgImage = [UIImage imageNamed:@"tile10.jpg"];
    
    tile10.actionCount = 1;
    tile10.alt_story = @"The path here runs along the edge of a deep canyon. Along the path you see that a few trees have been chopped down.";
    tile10.alt_actionButtonName = @"Examine one of the stumps.";
    tile10.alt_alertView = [[UIAlertView alloc] initWithTitle:@"Thump, Thump." message:@"It's just a stump." delegate:nil cancelButtonTitle:@"Jump!" otherButtonTitles: nil];


    
    PFLTile *tile11 = [[PFLTile alloc] init];
    tile11.story = @"Oh, crap!  It's The Boss!  He's the biggest, baddest, fugliest thing you've ever seen!  Will you run for your life or stay and fight?";
    tile11.actionButtonName = @"Fight The Boss.";
    tile11.alertView = [[UIAlertView alloc] initWithTitle:@"Help!!!" message:@"You try to move, but it feels as if some force is holding you to the spot where you stand, facing The Boss. He lumbers toward you, and the last thing you see is a glittering, curved scimitar slashing toward your neck..." delegate:nil cancelButtonTitle:@"OMG!" otherButtonTitles: nil];
    tile11.healthEffect = -1000;
    tile11.bgImage = [UIImage imageNamed:@"tile11.jpg"];
    
    tile11.actionCount = 1;
    tile11.alt_story = @"Are you alive or dead?";
    tile11.alt_actionButtonName = @"Fight The Boss.";
    tile11.alt_alertView = [[UIAlertView alloc] initWithTitle:@"!?!?!?!" message:@"As you back away from The Boss, something starts moving in your backpack. Suddenly, the orb you picked up earlier bursts out of its case and out of your backpack and it hovers over you, bathing you in a white light. The Boss freezes in his tracks, giving you time to strike at him with your <weapon>. With one blow, you strike him down." delegate:nil cancelButtonTitle:@"Hurrah!" otherButtonTitles: nil];


    
    PFLTile *tile12 = [[PFLTile alloc] init];
    tile12.story = @"You come to the rubble of what must once have been a house made of stone. You see broken furniture, torn fabric, shattered pottery, and... what's this?  A small hinged box with an indentation in each side, as though it were meant to hold some sort of ball or orb...";
    tile12.actionButtonName = @"Pick up the box.";
    tile12.alertView = [[UIAlertView alloc] initWithTitle:@"Hmmm..." message:@"The size of the indentations remind you of something... what was it?... something you saw recently, perhaps? Or maybe you're just imagining things." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    PFLItem *item12 = [[PFLItem alloc] init];
    item12.name = @"Orb Holder";
    tile12.item = item12;
    tile12.bgImage = [UIImage imageNamed:@"tile12.jpg"];
    
    tile12.actionCount = 1;
    tile12.alt_story = @"You are standing at the rubble of what must once have been a house made of stone. You see broken furniture, torn fabric, shattered pottery, and... what's this?";
    tile12.alt_actionButtonName = @"Pick up the other thing.";
    tile12.alt_alertView = [[UIAlertView alloc] initWithTitle:@"Huh." message:@"Looks like a potato peeler.  Maybe there was a farm here once." delegate:nil cancelButtonTitle:@"Wander On" otherButtonTitles: nil];


    
//    Alternate way to do this:
//    NSArray *fourthColumn = [[NSArray alloc] initWithObjects:tile10, tile11, tile12, nil];

    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tiles;

}

-(PFLCharacter *)character
{
    PFLCharacter *character = [[PFLCharacter alloc] init];
    character.name = @"Blobbo";
    PFLWeapon *weapon = [[PFLWeapon alloc] init];
    weapon.name = @"Fists";
    weapon.damage = 5;
    PFLArmor *armor = [[PFLArmor alloc] init];
    armor.name = @"Plain Clothing";
    armor.protection = 1;
    PFLItem *item = [[PFLItem alloc] init];
    item.name = @"<nothing>";
    character.armor = armor;
    character.weapon = weapon;
    character.health = 100;
    character.item = item;

    return character;
}


@end
