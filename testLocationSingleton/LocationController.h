//
//  LocationController.h
//  testLocationSingleton
//
//  Created by piyush shah on 7/12/14.
//  Copyright (c) 2014 onor inc. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

// protocol for sending location updates to another view controller
@protocol LocationControllerDelegate
@required
- (void)locationUpdate:(CLLocation*)location;
@end

@interface LocationController : NSObject  {
    
    CLLocationManager* locationManager;
    CLLocation* location;
    __weak id delegate;
}

@property (nonatomic, strong) CLLocationManager* locationManager;
@property (nonatomic, strong) CLLocation* location;
@property (nonatomic, weak) id  delegate;

+ (LocationController*)sharedLocationController; // Singleton method

@end