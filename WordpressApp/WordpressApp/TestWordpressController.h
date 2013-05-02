//
//  TestWordpressController.h
//  WordpressApp
//
//  Created by Maxime David on 2013-05-02.
//  Copyright (c) 2013 Maxime David. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WordpressView.h"

@interface TestWordpressController : UIViewController

@property(nonatomic, retain) WordpressView* myView;

- (BOOL)loadFromOtherApp:(NSURL *) url;
- (NSDictionary *)parseQueryString:(NSString *) query;

@end
