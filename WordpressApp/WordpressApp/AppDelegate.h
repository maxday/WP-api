//
//  AppDelegate.h
//  WordpressApp
//
//  Created by Maxime David on 2013-05-02.
//  Copyright (c) 2013 Maxime David. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TestWordpressController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) TestWordpressController *globalController;

@end
