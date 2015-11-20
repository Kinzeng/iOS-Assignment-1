//
//  SiteValue.h
//  Assignment 1
//
//  Created by Kevin on 9/26/15.
//  Copyright © 2015 Kevin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SiteValue : NSObject
{
    int count;
    NSString *username;
    NSString *password;
}

- (NSString *)getUsername;
- (void)setUsername: (NSString *)name;

- (NSString *)getPassword;
- (void)setPassword: (NSString *)pass;

- (int)getCount;
- (void)resetCount;
- (void)incrementCount;

- (void)print;

@end
