//
//  ActivityInventoryController.h
//  Pomodoro
//
//  Created by jn11585852 on 14-1-16.
//  Copyright (c) 2014年 iUgol. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ActivityInventoryController : NSWindowController {
    // data modal
    NSMutableArray* mpActivityList;
    
    // data view
    NSTableView *activityListView;
}

@property (assign) IBOutlet NSTableView *activityListView;

@end
