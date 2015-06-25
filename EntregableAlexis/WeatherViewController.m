//
//  WeatherViewController.m
//  EntregableAlexis
//
//  Created by Alexis Martínez on 23/6/15.
//  Copyright (c) 2015 Alexis Martínez Chacón. All rights reserved.
//

#import "WeatherViewController.h"
#import "TiempoAtmosferico.h"

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
    dataArray = [[NSArray alloc] initWithObjects:@"Madrid,es",@"Seville,es",@"London,uk",@"Paris,fr",@"Berlin,de",@"Tarifa,es",nil];
    
    _pickerCity.dataSource=self;
    
    
    _pickerCity.delegate = self;
    [self executeCallWSWeather:@"Madrid,es"];
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

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    // This method is triggered whenever the user makes a change to the picker selection.
    // The parameter named row and component represents what was selected.
    NSString *valor=dataArray[row];
    [self executeCallWSWeather:valor];
}

- (void) executeCallWSWeather:(NSString *)query{
    // This method is triggered whenever the user makes a change to the picker selection.
    // The parameter named row and component represents what was selected.
    NSMutableString *urlString=[[NSMutableString alloc]initWithString:@"http://api.openweathermap.org/data/2.5/weather?q="];

    [urlString appendString:query];
    NSURL *url= [NSURL URLWithString:urlString];
    NSURLRequest *req=[NSURLRequest requestWithURL:url];
    [NSURLConnection sendAsynchronousRequest:req queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        //Esto se ejecuta cuando termina la llamada
        if(data.length>0 && connectionError== nil){
            NSDictionary *weatherInfo= [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
            NSLog(@"%@",weatherInfo);
            
            TiempoAtmosferico *exhibit = [[TiempoAtmosferico alloc] initWithDictionary:weatherInfo];
            
            
            
            NSInteger tempe=[exhibit.temp integerValue];
            tempe=tempe-273.15;
            [_temperature setText:[NSString stringWithFormat:@"%i",tempe]];
            [_windSpeed setText:[exhibit windSpeed]];
            [_descriptionWeather setText:[exhibit descriptionWeather]];
            
        }
    }];
}


@end
