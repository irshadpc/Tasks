//
//  AddTasksViewController.m
//  Tasks
//
//  Created by Ami Schreiber on 1/17/12.
//  Copyright (c) 2012 Square Root. All rights reserved.
//

#import "AddTasksViewController.h"

@implementation AddTasksViewController

@synthesize dueDate;
@synthesize description;
@synthesize shortTitle;
@synthesize datePicker;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.dueDate.inputView = datePicker;
        
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)dateChanged:(id)sender {
    UIDatePicker *picker = (UIDatePicker *)sender;
    
    dueDate.text = [NSString stringWithFormat:@"%@", picker.date];
}

- (IBAction)doneEditing:(id)sender {
    [dueDate resignFirstResponder];
}

- (IBAction)dueDateTouchDown:(id)sender 
{
    UITextField *textField = (UITextField *)sender;
    textField.text = @"test";
}

- (IBAction)dueDateDidBeginEditing:(UITextView *)textField 
{  
    [textField resignFirstResponder];
    [datePicker setFrame:CGRectMake(0,200,320,120)];
    [datePicker addTarget:self action:@selector(done) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:datePicker];
}

- (IBAction)dueDateTouchUp:(id)sender 
{
    UITextField *textField = (UITextField *)sender;
    textField.text = @"test";
}


@end
