//
//  UserDefaults.h
//  Quit Smoking Cigarettes Counter
//
//  Created by Tania on 8/22/14.
//  Copyright (c) 2014 Tania Berezovski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserDefaults : NSObject

@property (nonatomic) NSInteger levelAsNeeded;
@property (nonatomic) NSInteger levelOfEnjoyment;
@property (nonatomic) NSNumber* averageCostOfOneCiggaret;
@property (nonatomic) NSInteger dailyGoal;

@end
