//
//  PersonInfo.h
//  resume
//
//  Created by Aubrey Lu on 6/14/13.
//  Copyright (c) 2013 Aubrey Lu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PersonInfo : NSObject
@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, strong) NSString *address;
@property (nonatomic, strong) NSString *address1;
@property (nonatomic, strong) NSString *city;
@property (nonatomic, strong) NSString *state;
@property (nonatomic) int zip;
@property (nonatomic, strong) NSString *country;
@property (nonatomic, strong) NSString *fullPersonImageName;

@end
