//
//  singletonViewController.m
//  testLocationSingleton
//
//  Created by piyush shah on 7/12/14.
//  Copyright (c) 2014 onor inc. All rights reserved.
//

#import "singletonViewController.h"
#import "LocationController.h"

@interface singletonViewController ()

@end

@implementation singletonViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
       
        [LocationController sharedLocationController];
        
        [[LocationController sharedLocationController].locationManager startUpdatingLocation];
    }
    return self;
}

- (void)locationUpdate:(CLLocation*)location;
{
    NSLog(@" getting location update in view %@", location);

}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [LocationController sharedLocationController].delegate = self;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
