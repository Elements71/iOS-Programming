//
//  ResumeViewController.h
//  resume
//
//  Created by Aubrey Lu on 6/17/13.
//  Copyright (c) 2013 Aubrey Lu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PersonInfo.h"

@interface ResumeViewController : UIViewController
@property (strong, nonatomic) PersonInfo *currentPersonInfo;
@property (strong, nonatomic) IBOutlet UIImageView *personImage;
@property (strong, nonatomic) IBOutlet UILabel *firstNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *lastNameLabel;
@property (strong, nonatomic) IBOutlet UITextView *fullAddressTextView;




-(void) refreshView;
@end
