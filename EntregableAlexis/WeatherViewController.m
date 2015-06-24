//
//  WeatherViewController.m
//  EntregableAlexis
//
//  Created by Alexis Martínez on 23/6/15.
//  Copyright (c) 2015 Alexis Martínez Chacón. All rights reserved.
//

#import "WeatherViewController.h"

@interface WeatherViewController ()

@end

@implementation WeatherViewController




- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
   dataArray = [[NSArray alloc] initWithObjects:@"Madrid,es",@"Seville,es",@"London,uk",@"Paris,fr",@"Berlin,de",nil];

    _pickerCity.dataSource=self;
    
    
    _pickerCity.delegate = self;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [dataArray count];
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [dataArray objectAtIndex:row];
}


@end
