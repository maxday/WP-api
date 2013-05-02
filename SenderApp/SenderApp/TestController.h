//
//  TestController.h
//  SenderApp
//
//  Created by Maxime David on 2013-05-02.
//  Copyright (c) 2013 Maxime David. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeView.h"

@interface TestController : UIViewController

@property(nonatomic, retain) HomeView* myHomeView;

- (void) sendToWordpressApp:(id) sender;
@end
