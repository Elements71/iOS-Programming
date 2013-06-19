//
//  ViewController.m
//  resume
//
//  Created by Aubrey Lu on 6/14/13.
//  Copyright (c) 2013 Aubrey Lu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize firstNameTextField,lastNameTextField,addressTextField,address1TextField,cityTextField,stateTextField,zipTextField,countryTextField, personDetails;
@synthesize personInfo;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    personInfo= [[PersonInfo alloc]init];
    firstNameTextField.delegate = self;
    lastNameTextField.delegate = self;
    addressTextField.delegate=self;
    address1TextField.delegate=self;
    cityTextField.delegate=self;
    stateTextField.delegate=self;
    zipTextField.delegate=self;
    countryTextField.delegate=self;
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startInfoButton:(id)sender {
    personInfo.firstName=firstNameTextField.text;
    personInfo.lastName=lastNameTextField.text;

    personInfo.lastName=lastNameTextField.text;
    personInfo.address=addressTextField.text;
    personInfo.address1=address1TextField.text;
    personInfo.city = cityTextField.text;
    personInfo.state= stateTextField.text;
    personInfo.zip = [zipTextField.text intValue];
    personInfo.country = countryTextField.text;
    
}

-(BOOL)textFieldShouldReturn:(UITextField*)textField;
{
    [textField resignFirstResponder];
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showResume"]) {
       ResumeViewController *resumeViewController= [segue destinationViewController];
        resumeViewController.currentPersonInfo =personInfo;
        
    }
}
@end
