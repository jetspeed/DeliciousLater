//
//  Delicious.m
//  DeliciousLater
//
//  Created by jetspeed4 on 12-2-27.
//  Copyright 2012年 jetspeed4. All rights reserved.
//

#import "Delicious.h"

@implementation Delicious

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (NSDictionary *)getBookmarks
{
    //NSURL *url = [NSURL URLWithString:@"https://jetspeed4:shmimy@api.del.icio.us/v1/posts/recent"];
    NSURL *url = [NSURL URLWithString:@"http://feeds.delicious.com/v2/json/jetspeed4?count=100"];
    ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:url];    
    [request startSynchronous];    
    NSError *error = [request error];    
    if (!error) {        
        NSString *response = [request responseString]; 
        NSDictionary *bookmarkDic = [response objectFromJSONString];
        int count = [bookmarkDic count];
        NSLog(@"I fetched %i items", count);
        NSLog(response);
        return bookmarkDic;
    }
}

@end
