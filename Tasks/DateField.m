//
//  DateField.m
//  Tasks
//
//  Created by Ami Schreiber on 1/22/12.
//  Copyright (c) 2012 Square Root. All rights reserved.
//

#import "DateField.h"

@implementation DateField

- (id)initWithCoder:(NSCoder *)aDecoder {
    if ( (self = [super initWithCoder:aDecoder]) ) {
        [self setupInputViews];
        
        self.text = [NSString stringWithFormat:@"%@", [NSDate date]];
    }
    
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    if ( (self = [super initWithFrame:frame]) ) {
        [self setupInputViews];
        
        self.text = [NSString stringWithFormat:@"%@", [NSDate date]];
    }
    
    return self;
}

- (void)setupInputViews {
    if ( self.inputView == nil ) {
        UIDatePicker *pickerView = [[UIDatePicker alloc] init];
        
        [pickerView addTarget:self
                       action:@selector(dateChanged)
             forControlEvents:UIControlEventValueChanged];
        
        self.inputView = pickerView;
    }
    
    if ( self.inputAccessoryView == nil ) {
        UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] 
                                       initWithBarButtonSystemItem:UIBarButtonSystemItemDone
                                       target:self
                                       action:@selector(resignFirstResponder)];
        
        UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
        toolbar.tintColor = [UIColor blackColor];
        toolbar.items = [NSArray arrayWithObject:doneButton];
        
        self.inputAccessoryView = toolbar;
    }
}

- (void)dateChanged {
    self.text = [NSString stringWithFormat:@"%@", [(UIDatePicker*)self.inputView date]];
}




@end
