//
//  SecondViewController.m
//  Simple_Player_ObjC
//
//  Created by olxios on 26/08/14.
//  Copyright (c) 2014 swiftiostutorials.com. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize isPresented;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.isPresented = YES;
}

- (IBAction)dismiss:(id)sender
{
    isPresented = NO;
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

@end
