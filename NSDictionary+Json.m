//
//  NSDictionary+Json.m
//  toJson
//
//  Created by Sundear on 2017/5/17.
//  Copyright © 2017年 xiexin. All rights reserved.
//

#import "NSDictionary+Json.h"

@implementation NSDictionary (Json)

-(NSString*)Json{
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:0 error:nil];
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}
-(NSString*)JsonPretty{
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:nil];
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}

@end
