//
//  ViewController.m
//  Feature Flag ObjectiveC
//
//  Created by Eric Goebelbecker on 6/4/18.
//  Copyright © 2018 Eric Goebelbecker. All rights reserved.
//

#import "ViewController.h"
#import "MyContainer.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(updateLabels:)
                                                 name:@"LabelNotification"
                                               object:nil];
}


- (void) updateLabels:(NSNotification *) notification
{

    
    dispatch_async(dispatch_get_main_queue(), ^{
        AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];

        NSLog(@"Value is %@",   appDelegate.myContainer.isNewYear.isEnabled ? @"YES" : @"NO");
        
        if (appDelegate.myContainer.isNewYear.isEnabled)
        {
            self->_greetingLabel.text = @"Happy Holidays!";
        }
        else
        {
            self->_greetingLabel.text = @"Hello, World!";
        }
    });
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
