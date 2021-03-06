//
//  LoginViewController.m
//  EntregableAlexis
//
//  Created by Alexis Martínez on 23/6/15.
//  Copyright (c) 2015 Alexis Martínez Chacón. All rights reserved.
//

#import "LoginViewController.h"
#import "WeatherViewController.h"
@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex) {
        case 0:
        {
            //this is the "Cancel"-Button
            //do something
        }
            break;
            
        case 1:
        {
            //this is the "OK"-Button
            //do something
        }
            break;
            
        default:
            break;
    }
    
}

- (IBAction)onClickLoginButton:(id)sender {
    if ([_userField.text length]>0 && [_passField.text length]>0)
    {
        [self performSegueWithIdentifier:@"seguerToWeather" sender:nil];
    }else{
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Lo sentimos, el usuario y contraseña no son correctos"
                              message:@"Intentelo de nuevo."
                              delegate:self
                              cancelButtonTitle:@"Aceptar"
                              otherButtonTitles:nil,nil];
        [alert show];
    }
   

}
@end
