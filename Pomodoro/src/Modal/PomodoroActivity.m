//
//  PomodoroActivity.m
//  Pomodoro
//
//  Created by jn11585852 on 14-1-18.
//  Copyright (c) 2014年 iUgol. All rights reserved.
//

#import "PomodoroActivity.h"

@implementation PomodoroActivity
@synthesize date = _date;
@synthesize location = _location;
@synthesize man = _man;
@synthesize title = _title;
@synthesize description = _description;
@synthesize pomodoroCount = _pomodoroCount;

- (id)init
{
    if (self = [super init]) {
        
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

@end
