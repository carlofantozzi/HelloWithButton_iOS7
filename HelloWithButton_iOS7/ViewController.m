//
//  ViewController.m
//  HelloWithButton_iOS7
//
//  Created by Carlo Fantozzi on 05/11/13.
//  Copyright (c) 2013 Carlo Fantozzi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    // Create the TextView (called "label" in iOS)
    CGRect labelFrame = CGRectMake(119.0, 27.0, 186.0, 21.0);
    tv = [[UILabel alloc] initWithFrame:labelFrame];
    [tv setText:@"Press the button, please"];
    
    // Create the Button
    CGRect buttonFrame = CGRectMake(20.0, 20.0, 91.0, 37.0);
    bu = [UIButton buttonWithType:UIButtonTypeSystem];
    bu.frame = buttonFrame;
    [bu setTitle:@"Press me" forState:UIControlStateNormal];
    
    // Set the action to be performed when the button is pressed
    [bu addTarget:self
           action:@selector(buttonClicked:)
 forControlEvents:UIControlEventTouchUpInside];
	
    // Add the button and the label to the view
    [self.view addSubview:bu];
    [self.view addSubview:tv];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonClicked:(id)sender
{
    //NSString *newText = [[NSString alloc] initWithString: @"Good job!"];
    NSString *newText = @"Good job!";
    
    // Perform action on click, i.e., change tv's text.
    [tv setText:newText];
}

@end
