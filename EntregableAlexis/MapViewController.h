//
//  MapViewController.h
//  EntregableAlexis
//
//  Created by Alexis Martínez on 26/6/15.
//  Copyright (c) 2015 Alexis Martínez Chacón. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController<CLLocationManagerDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *map;
@property (nonatomic,retain) CLLocationManager *locationManager;
@property NSNumber *longitude;
@property NSNumber *latitude;
@property (weak, nonatomic) IBOutlet UIButton *buttonTypeMap;
@property NSNumber *typeMap;
- (IBAction)actionButtonType:(id)sender;
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations;
@end
