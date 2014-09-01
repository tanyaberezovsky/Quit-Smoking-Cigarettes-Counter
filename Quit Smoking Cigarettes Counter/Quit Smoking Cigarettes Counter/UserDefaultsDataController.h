//
//  UserDefaultsDataController.h
//  Quit Smoking Cigarettes Counter
//
//  Created by Tania on 8/22/14.
//  Copyright (c) 2014 Tania Berezovski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserDefaults.h"

@interface UserDefaultsDataController : NSObject

//@property (strong, nonatomic) UserDefaults *userDef;

-(UserDefaults*)loadUserDefaults;
-(void)saveUserDefaults:(UserDefaults*)userDefaults;

@end
