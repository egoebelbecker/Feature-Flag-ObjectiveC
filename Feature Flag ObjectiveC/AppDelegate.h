//
//  AppDelegate.h
//  Feature Flag ObjectiveC
//
//  Created by Eric Goebelbecker on 6/4/18.
//  Copyright © 2018 Eric Goebelbecker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyContainer.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) MyContainer* myContainer;

@end

