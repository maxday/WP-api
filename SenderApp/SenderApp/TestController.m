//
//  TestController.m
//  SenderApp
//
//  Created by Maxime David on 2013-05-02.
//  Copyright (c) 2013 Maxime David. All rights reserved.
//

#import "TestController.h"
#import "HomeView.h"

@interface TestController ()

@end

@implementation TestController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        HomeView* myHomeView = [[HomeView alloc] init];
        [myHomeView.sendBtn addTarget:self action:@selector(sendToWordpressApp:) forControlEvents:UIControlEventTouchUpInside];
        self.view = myHomeView;
    }
    return self;
}

- (void) sendToWordpressApp:(id) sender {
    NSLog(@"Je send");
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
