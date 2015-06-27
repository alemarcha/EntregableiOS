//
//  MapViewController.m
//  EntregableAlexis
//
//  Created by Alexis Martínez on 26/6/15.
//  Copyright (c) 2015 Alexis Martínez Chacón. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.map.mapType = MKMapTypeStandard;
    CLLocationCoordinate2D coord;
    
    coord.latitude = _latitude.doubleValue;
    
    coord.longitude = _longitude.doubleValue;
    MKCoordinateRegion rec=MKCoordinateRegionMakeWithDistance(coord, 10000, 10000);
    _map.mapType=MKMapTypeHybrid;
    _typeMap=[NSNumber numberWithInteger:2];
    [_map setRegion:rec];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButtonType:(id)sender {
    switch (_typeMap.intValue) {
        case 1:
    _typeMap=[NSNumber numberWithInteger:2];
            _map.mapType=MKMapTypeHybrid;
            break;
            
        case 2:
    _typeMap=[NSNumber numberWithInteger:3];
            _map.mapType=MKMapTypeSatellite;
            break;
            

        case 3:
    _typeMap=[NSNumber numberWithInteger:1];
            _map.mapType=MKMapTypeStandard;
            break;
            

        default:
    _typeMap=[NSNumber numberWithInteger:1];
                _map.mapType=MKMapTypeHybrid;
            
            break;
    }

    
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
    CLLocation *loc= [locations lastObject];
    NSLog(@"Latitud: %f y longitud: %f",(double)loc.coordinate.latitude,(double)loc.coordinate.longitude);
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
