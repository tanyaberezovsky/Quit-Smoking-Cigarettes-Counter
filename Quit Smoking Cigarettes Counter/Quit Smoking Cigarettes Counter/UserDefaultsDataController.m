//
//  UserDefaultsDataController.m
//  Quit Smoking Cigarettes Counter
//
//  Created by Tania on 8/22/14.
//  Copyright (c) 2014 Tania Berezovski. All rights reserved.
//

#import "UserDefaultsDataController.h"


@implementation UserDefaultsDataController



-(void)saveUserDefaults:(UserDefaults*)userDefaults
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setInteger:userDefaults.levelAsNeeded forKey:@"levelAsNeeded"];
    [defaults setInteger:userDefaults.levelOfEnjoyment forKey:@"levelOfEnjoyment"];
    [defaults setObject:userDefaults.averageCostOfOneCiggaret forKey:@"averageCostOfOneCiggaret"];
    [defaults setInteger:userDefaults.dailyGoal forKey:@"dailyGoal"];
    [defaults setInteger:userDefaults.levelAsNeeded forKey:@"levelAsNeeded"];
    
    [defaults synchronize];
}

- (UserDefaults*)loadUserDefaults
{
    UserDefaults *userDefaults = [[UserDefaults alloc]init];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    userDefaults.levelAsNeeded = [defaults integerForKey:@"levelAsNeeded"];
    userDefaults.levelOfEnjoyment = [defaults integerForKey:@"levelOfEnjoyment"];
    userDefaults.averageCostOfOneCiggaret = [defaults objectForKey:@"averageCostOfOneCiggaret"];
    userDefaults.dailyGoal = [defaults integerForKey:@"dailyGoal"];
    
    return userDefaults;
}
/*
-(UserDefaults *)mydeck
{
    if(!user) _mydeck = [self createDeck];
    return _mydeck;
}

- (Deck *)createDeck
{
    return [[PlayingCardDeck alloc] init];
}



-(IBAction)savedata:(id)sender{
    UserDefaults *userdef = [[UserDefaults alloc] init];
//    userdef.AverageCostOfOneCiggaret = 1.3;
    
    
    NSString *savestring = field.text;
    NSUserDefaults *userdefaults = [NSUserDefaults standardUserDefaults];
    [userdefaults setObject:savestring forKey:@"savedstring"];
    [userdefaults synchronize];
}

-(IBAction)loaddata:(id)sender{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
     NSString *loadstring = [defaults objectForKey:@"savedstring"];
     [field setText:loadstring];
     [label setText:loadstring];
 
}
*/

@end
