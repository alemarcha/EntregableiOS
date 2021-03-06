//
//  WeatherViewController.h
//  EntregableAlexis
//
//  Created by Alexis Martínez on 23/6/15.
//  Copyright (c) 2015 Alexis Martínez Chacón. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TiempoAtmosferico.h"

@interface WeatherViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>
{
NSArray *dataArray;
}

@property (weak, nonatomic) IBOutlet UIPickerView *pickerCity;
@property (weak, nonatomic) IBOutlet UILabel *windSpeed;
@property (weak, nonatomic) IBOutlet UILabel *temperature;
@property (weak, nonatomic) IBOutlet UILabel *descriptionWeather;
@property TiempoAtmosferico *exhibit;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
- (void) executeCallWSWeather:(NSString *)query;
@end
