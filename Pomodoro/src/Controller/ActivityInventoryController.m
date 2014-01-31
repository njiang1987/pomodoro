//
//  ActivityInventoryController.m
//  Pomodoro
//
//  Created by jn11585852 on 14-1-16.
//  Copyright (c) 2014年 iUgol. All rights reserved.
//

#import "ActivityInventoryController.h"
#import "PomodoroActivity.h"

#define stdDateFormat @"hh:mm:ss"

@interface ActivityInventoryController ()<NSTableViewDataSource, NSTableViewDelegate>

@end

@implementation ActivityInventoryController
@synthesize activityListView;

- (id)init
{
    self = [super initWithWindowNibName:@"ActivityInventory"];
    if (self) {
        mpActivityList = [[NSMutableArray alloc] init];
        
        //test
        PomodoroActivity* activity = [[PomodoroActivity alloc] init];
        activity.date = [NSDate date];
        activity.location = @"jia";
        activity.man = @"me";
        activity.title = @"ganhuo";
        activity.description = @"ganhuo!!!!!!!";
        activity.pomodoroCount = 5;
        [mpActivityList addObject:activity];
        [activity release];
    }
    return self;
}

- (void)dealloc
{
    [mpActivityList release];
    [super dealloc];
}

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)showWindow:(id)sender
{
    [self.window makeKeyAndOrderFront:sender];
}

#pragma mark - NSTableViewDataSource
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return [mpActivityList count];
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    PomodoroActivity* activity = [mpActivityList objectAtIndex:row];
    if ([tableColumn.identifier isEqualToString:@"date"]) {
        NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
        [dateFormat setDateFormat:stdDateFormat];
        NSString* dateString = [dateFormat stringFromDate:activity.date];
        [dateFormat release];
        return dateString;
    }
    else if ([tableColumn.identifier isEqualToString:@"title"]){
        return activity.title;
    }
    else if ([tableColumn.identifier isEqualToString:@"description"]){
        return activity.description;
    }
    else if ([tableColumn.identifier isEqualToString:@"pomodoroCount"]){
        return [NSString stringWithFormat:@"%ld", (long)activity.pomodoroCount];
    }
    return  nil;
}

@end
