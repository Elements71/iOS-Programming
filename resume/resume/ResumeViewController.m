//
//  ResumeViewController.m
//  resume
//
//  Created by Aubrey Lu on 6/17/13.
//  Copyright (c) 2013 Aubrey Lu. All rights reserved.
//

#import "ResumeViewController.h"

@interface ResumeViewController ()

@end

@implementation ResumeViewController
@synthesize personImage, firstNameLabel,lastNameLabel, fullAddressTextView;
@synthesize currentPersonInfo;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = [NSString stringWithFormat:@"%@ %@", currentPersonInfo.firstName, currentPersonInfo.lastName];
	// Do any additional setup after loading the view.
    [self refreshView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)refreshView{
    if (![currentPersonInfo.firstName isEqual: @""]){
    firstNameLabel.text = currentPersonInfo.firstName;
    }else {
    firstNameLabel.text = @"First Name";
    }
    
    if (![currentPersonInfo.lastName isEqual: @""]){
       lastNameLabel.text = currentPersonInfo.lastName;
    }else {
        lastNameLabel.text = @"Last Name";
    }
    personImage.image = [UIImage imageNamed:currentPersonInfo.fullPersonImageName];
    
    if (![currentPersonInfo.address1 isEqualToString:@""]) {
        
    fullAddressTextView.text = [NSString stringWithFormat:@"%@\n%@\n%@, %@ %i, %@",currentPersonInfo.address, currentPersonInfo.address1,currentPersonInfo.city,currentPersonInfo.state, currentPersonInfo.zip, currentPersonInfo.country];
    } else {
         fullAddressTextView.text = [NSString stringWithFormat:@"%@\n%@, %@ %i, %@",currentPersonInfo.address, currentPersonInfo.city,currentPersonInfo.state, currentPersonInfo.zip, currentPersonInfo.country];
    }
}
@end
