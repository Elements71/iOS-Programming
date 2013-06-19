//
//  ViewController.h
//  resume
//
//  Created by Aubrey Lu on 6/14/13.
//  Copyright (c) 2013 Aubrey Lu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PersonInfo.h"
#import "ResumeViewController.h"

@interface ViewController : UIViewController<UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *addressTextField;
@property (strong, nonatomic) IBOutlet UITextField *address1TextField;
@property (strong, nonatomic) IBOutlet UITextField *cityTextField;
@property (strong, nonatomic) IBOutlet UITextField *stateTextField;
@property (strong, nonatomic) IBOutlet UITextField *zipTextField;
@property (strong, nonatomic) IBOutlet UITextField *countryTextField;

@property (strong,nonatomic) PersonInfo *personInfo;
@property (strong, nonatomic) NSMutableArray *personDetails;
@property (strong,nonatomic) ResumeViewController *resumeViewController;

- (IBAction)startInfoButton:(id)sender;

@end
