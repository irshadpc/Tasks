//
//  AddTasksViewController.h
//  Tasks
//
//  Created by Ami Schreiber on 1/17/12.
//  Copyright (c) 2012 Square Root. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DateField.h"

@interface AddTasksViewController : UIViewController

@property (nonatomic, copy) IBOutlet DateField      *dueDate;
@property (nonatomic, copy) IBOutlet UITextView      *description;
@property (nonatomic, copy) IBOutlet UITextView      *shortTitle;
@property (nonatomic, retain) IBOutlet UIDatePicker    *datePicker;

- (IBAction)doneEditing:(id)sender;
- (IBAction)dateChanged:(id)sender;
- (IBAction)dueDateDidBeginEditing:(UITextView *)textField;

@end
