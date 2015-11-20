//
//  main.m
//  Assignment 1
//
//  Created by Kevin on 9/26/15.
//  Copyright © 2015 Kevin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SiteValue.h"

NSMutableDictionary *info; //dictionary that stores all the records

BOOL addRecord(NSString *site, NSString *username, NSString *password, int count) {
    //create the record
    SiteValue *record = [[SiteValue alloc] init];
    [record setUsername: username];
    [record setPassword: password];
    [record resetCount];
    
    //lazy instantiation of the dictionary
    if (!info) {
        info = [NSMutableDictionary dictionaryWithObjectsAndKeys: record, site, nil];
        return YES;
    }
    
    //check if this key already exists
    if ([info objectForKey: site]){
        return NO;
    }
    else {
        //add the record to the dictionary
        [info setObject: record forKey: site];
        return YES;
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"ADDING RECORDS");
        NSLog(addRecord(@"Google", @"a", @"a", 0) ? @"YES" : @"NO");
        NSLog(addRecord(@"Google", @"a", @"a", 0) ? @"YES" : @"NO");
        NSLog(addRecord(@"Yahoo", @"b", @"b", 0) ? @"YES" : @"NO");
        NSLog(addRecord(@"Facebook", @"c", @"c", 0) ? @"YES" : @"NO");
        NSLog(addRecord(@"Twitter", @"d", @"d", 0) ? @"YES" : @"NO");
        NSLog(addRecord(@"NYU", @"e", @"e", 0) ? @"YES" : @"NO");
        
        NSLog(@"PRINTING OUT RECORDS");
        for (NSString *key in info) {
            SiteValue *value = [info objectForKey: key];
            [value print];
        }
        
        NSLog(@"REMOVING RECORDS");
        [info removeObjectForKey: @"Google"];
        [info removeObjectForKey: @"Yahoo"];
        for (NSString *key in info) {
            SiteValue *value = [info objectForKey: key];
            [value print];
        }
        
        NSLog(@"INCREMENTING COUNTS");
        for (NSString *key in info) {
            SiteValue *value = [info objectForKey: key];
            [value incrementCount];
            [value incrementCount];
            [value incrementCount];
            [value incrementCount];
            [value print];
        }
    }
    return 0;
}
