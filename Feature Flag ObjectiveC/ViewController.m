//
//  ViewController.m
//  Feature Flag ObjectiveC
//
//  Created by Eric Goebelbecker on 6/4/18.
//  Copyright © 2018 Eric Goebelbecker. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

bool isHoliday = false;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    if (isHoliday)
    {
        _greetingLabel.text = @"Happy Holidays!";
    }
    else
    {
        _greetingLabel.text = @"Hello, World!";
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
