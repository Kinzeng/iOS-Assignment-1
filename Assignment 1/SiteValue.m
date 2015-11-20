//
//  SiteValue.m
//  Assignment 1
//
//  Created by Kevin on 9/26/15.
//  Copyright © 2015 Kevin. All rights reserved.
//

#import "SiteValue.h"

@implementation SiteValue

//getter for username
- (NSString *)getUsername {
    return username;
}

//setter for username
- (void)setUsername:(NSString *)name {
    username = name;
}

//getter for password
- (NSString *)getPassword {
    return password;
}

//setter for password
- (void)setPassword:(NSString *)pass {
    password = pass;
}

//getter for count
- (int)getCount {
    return count;
}

//setter for count (sets it to 0)
- (void)resetCount {
    count = 0;
}

//increments count by 1
- (void)incrementCount {
    count++;
}

//print the SiteValue object's username, password, and count
- (void)print {
    NSLog(@"Username: %@ Password: %@ Count: %d", username, password, count);
}

@end
