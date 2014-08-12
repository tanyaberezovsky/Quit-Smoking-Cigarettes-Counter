//
//  QuitSmokingViewController.h
//  Quit Smoking Cigarettes Counter
//
//  Created by Tania on 1/7/14.
//  Copyright (c) 2014 Tania Berezovski. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface QuitSmokingViewController : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource>
{
    
    IBOutlet UIButton *btnAdd;
    IBOutlet UILabel *lblLastCigaret;
    IBOutlet UITextField *txtDatePiker;
    UIDatePicker *datePicker;
    
    
    IBOutlet UITextField *txtCigaretsAmount;
    IBOutlet UITextField *txtNeedLvl;
    
    IBOutlet UITextField *txtEnjoyLvl;
    
    //UIPickerView *myPickerView;
    //NSMutableArray *array_from;
    NSArray *cities;

    
}
-(IBAction)PickerView:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *txtCigarets;


- (NSString*)getStringDate:(NSDate *) dDate;

-(void)LoadDatePicker;

-(void)LoadPickerViewNeedLevel;

-(void)LoadPickerViewEnjoyLevel;

-(IBAction)textFieldReturn:(id)sender;

@end
