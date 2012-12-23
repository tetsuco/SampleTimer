//
//  ViewController.m
//  SampleTimer
//
//  Created by  on 11/10/28.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //--------------------------------------------------
    // NSTimerスタート
    //--------------------------------------------------
    [NSTimer scheduledTimerWithTimeInterval:3.0f
                                     target:self 
                                   selector:@selector(nsTimerAction:) 
                                   userInfo:nil 
                                    repeats:NO];
    
    //--------------------------------------------------
    // performSelectorスタート
    //--------------------------------------------------
    [self performSelector:@selector(performSelectorAction) withObject:nil afterDelay:5.0f];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


//--------------------------------------------------
// NSTimerアクション
//--------------------------------------------------
- (void)nsTimerAction:(NSTimer*)timer
{
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(50, 100, 200, 25);
    label.text = @"NSTimerだよ";
    [self.view addSubview:label];
}


//--------------------------------------------------
// performSelectorアクション
//--------------------------------------------------
- (void)performSelectorAction
{
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(50, 200, 200, 25);
    label.text = @"performSelectorだよ";
    [self.view addSubview:label];
}


@end
