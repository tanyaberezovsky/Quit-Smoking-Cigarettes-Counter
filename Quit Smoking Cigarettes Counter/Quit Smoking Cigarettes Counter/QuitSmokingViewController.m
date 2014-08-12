//
//  QuitSmokingViewController.m
//  Quit Smoking Cigarettes Counter
//
//  Created by Tania on 1/7/14.
//  Copyright (c) 2014 Tania Berezovski. All rights reserved.
//

#import "QuitSmokingViewController.h"

@interface QuitSmokingViewController ()

@end

@implementation QuitSmokingViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.o
    
    //UIColor *baseColor = [UIColor colorWithRed:0 green:184 blue:156 alpha:1];
    //[btnAdd setBackgroundColor:baseColor];
    
    //round button conners
     CALayer *btnLayer = [btnAdd layer];
     [btnLayer setMasksToBounds:YES];
     [btnLayer setCornerRadius:10.0f];

    [self LoadDatePicker];
    [self LoadPickerViewNeedLevel];
    [self LoadPickerViewEnjoyLevel];
    
    txtEnjoyLvl.text = @"0";
    txtCigaretsAmount.text = @"1";
    txtNeedLvl.text = @"0";
}

-(void)LoadPickerViewNeedLevel{
    cities = [NSArray arrayWithObjects:@"0",@"1",@"2",@"3",@"4", nil];
    UIPickerView *cityPicker = [[UIPickerView alloc] initWithFrame:CGRectZero];
    cityPicker.delegate = self;
    cityPicker.dataSource = self;
    [cityPicker setShowsSelectionIndicator:YES];
    cityPicker.tag=1;
    txtNeedLvl.inputView = cityPicker;
    // Create done button in UIPickerView
    UIToolbar*  mypickerToolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 56)];
    mypickerToolbar.barStyle = UIBarStyleBlackOpaque;
    [mypickerToolbar sizeToFit];
    NSMutableArray *barItems = [[NSMutableArray alloc] init];
    UIBarButtonItem *flexSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    [barItems addObject:flexSpace];
    UIBarButtonItem *doneBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(pickerDoneClicked)];
    [barItems addObject:doneBtn];
    [mypickerToolbar setItems:barItems animated:YES];
    txtNeedLvl.inputAccessoryView = mypickerToolbar;

}


-(void)LoadPickerViewEnjoyLevel{
    cities = [NSArray arrayWithObjects:@"0",@"1",@"2",@"3",@"4", nil];
    UIPickerView *cityPicker = [[UIPickerView alloc] initWithFrame:CGRectZero];
    cityPicker.delegate = self;
    cityPicker.dataSource = self;
    [cityPicker setShowsSelectionIndicator:YES];
    cityPicker.tag=2;
    txtEnjoyLvl.inputView = cityPicker;
    // Create done button in UIPickerView
    UIToolbar*  mypickerToolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 56)];
    mypickerToolbar.barStyle = UIBarStyleBlackOpaque;
    [mypickerToolbar sizeToFit];
    NSMutableArray *barItems = [[NSMutableArray alloc] init];
    UIBarButtonItem *flexSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    [barItems addObject:flexSpace];
    UIBarButtonItem *doneBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(pickerDoneClicked)];
    [barItems addObject:doneBtn];
    [mypickerToolbar setItems:barItems animated:YES];
    txtEnjoyLvl.inputAccessoryView = mypickerToolbar;
    
}

-(void)pickerDoneClicked
{
    NSLog(@"Done Clicked");
    [txtNeedLvl resignFirstResponder];
    [txtEnjoyLvl resignFirstResponder];
}
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return cities.count;
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [cities objectAtIndex:row];
}
- (void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
    NSString* selectedValue =  (NSString *)[cities objectAtIndex:row];
    if(pickerView.tag == 1)
    {
        txtNeedLvl.text = selectedValue;
    }
    else{
        
        txtEnjoyLvl.text = selectedValue;
    }
}

-(void)LoadDatePicker{
    
//set now date to txtDatePicker
    NSDate *currDate = [NSDate date];
    [txtDatePiker setText:[self getStringDate: currDate]];

    
    //load date picker
    UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    toolbar.barStyle   = UIBarStyleBlackTranslucent;
    
    UIBarButtonItem *itemDone  = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:txtDatePiker action:@selector(resignFirstResponder)];
    UIBarButtonItem *itemSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    toolbar.items = @[itemSpace,itemDone];
    
    datePicker = [[UIDatePicker alloc] initWithFrame:CGRectMake(0, 0, 320, 216)];
    datePicker.minimumDate   = [NSDate date];
    datePicker.date          = [NSDate date];
    [datePicker addTarget:self action:@selector(done) forControlEvents:UIControlEventValueChanged];
    
    txtDatePiker.inputAccessoryView = toolbar;
    txtDatePiker.inputView          = datePicker;
    
   // [txtDatePiker becomeFirstResponder];

    

}



/*belong to      will add new date text and on click will open datetime chooser with done*/
-(void)done
{
/*    //[txtDatePiker resignFirstResponder];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd 'at' HH:mm"];
//
    NSString* s = [self getStringDate: datePicker.date];
    //[txtDatePiker setText:[getStringDate:  ]];*/
    [txtDatePiker setText:[self getStringDate: datePicker.date]];
}


-(NSString*)getStringDate:(NSDate *) dDate
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd 'at' HH:mm"];
    
    return [dateFormatter stringFromDate: dDate];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)pickerView:(UIPickerView *)pickerViewNumberOfRowsInComponent : (NSInteger)component {
    return 1;
}

-(IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [[event allTouches] anyObject];
    if ([_txtCigarets isFirstResponder] && [touch view] != _txtCigarets) {
        [_txtCigarets resignFirstResponder];
    }
    [super touchesBegan:touches withEvent:event];
}


@end
