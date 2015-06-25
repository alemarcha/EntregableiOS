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
        self.name=[NSString stringWithFormat:@"%@",[dict valueForKeyPath:@"name"]];
        self.cod=[NSString stringWithFormat:@"%@",[dict valueForKeyPath:@"cod"]];

    }
    return self;
}

@end
