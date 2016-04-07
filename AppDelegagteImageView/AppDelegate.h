//
//  AppDelegate.h
//  AppDelegagteImageView
//
//  Created by test on 4/5/16.
//  Copyright © 2016 test. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property(nonatomic,strong) NSString *imgValue;
-(NSString *)getValue;
-(void)setImgValueString:(NSString*)someValue;


@end

