//
//  TiempoAtmosferico.m
//  EntregableAlexis
//
//  Created by Alexis Martínez on 25/6/15.
//  Copyright (c) 2015 Alexis Martínez Chacón. All rights reserved.
//

#import "TiempoAtmosferico.h"

@implementation TiempoAtmosferico

-(instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    if (self) {

        NSArray *weatherValues = [dict valueForKey:@"weather"];
        self.descriptionWeather=[NSString stringWithFormat:@"%@",[weatherValues[0] valueForKeyPath:@"description"]];
        self.temp=[NSString stringWithFormat:@"%@",[dict valueForKeyPath:@"main.temp"]];
        self.windSpeed=[NSString stringWithFormat:@"%@",[dict valueForKeyPath:@"wind.speed"]];
        self.latitude=[NSString stringWithFormat:@"%@",[dict valueForKeyPath:@"coord.lat"]];
        self.longitude=[NSString stringWithFormat:@"%@",[dict valueForKeyPath:@"coord.lon"]];

        
    }
    return self;
}

@end
