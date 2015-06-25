//
//  TiempoAtmosferico.h
//  EntregableAlexis
//
//  Created by Alexis Martínez on 25/6/15.
//  Copyright (c) 2015 Alexis Martínez Chacón. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TiempoAtmosferico : NSObject
@property(copy, nonatomic) NSString *name;
@property(copy, nonatomic) NSString *cod;
-(instancetype)initWithDictionary:(NSDictionary *)dict;
@end
