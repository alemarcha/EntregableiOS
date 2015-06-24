//
//  WeatherViewController.h
//  EntregableAlexis
//
//  Created by Alexis Martínez on 23/6/15.
//  Copyright (c) 2015 Alexis Martínez Chacón. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WeatherViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>
{
NSArray *dataArray;
}
@property (weak, nonatomic) IBOutlet UIPickerView *pickerCity;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
@end
