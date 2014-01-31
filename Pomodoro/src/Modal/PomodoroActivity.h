//
//  PomodoroActivity.h
//  Pomodoro
//
//  Created by jn11585852 on 14-1-18.
//  Copyright (c) 2014年 iUgol. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PomodoroActivity : NSObject
@property (nonatomic, copy) NSDate* date;
@property (nonatomic, copy) NSString* location;
@property (nonatomic, copy) NSString* man;
@property (nonatomic, copy) NSString* title;
@property (nonatomic, copy) NSString* description;
@property (nonatomic, assign) NSInteger pomodoroCount;

@end
