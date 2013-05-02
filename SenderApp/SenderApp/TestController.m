//
//  TestController.m
//  SenderApp
//
//  Created by Maxime David on 2013-05-02.
//  Copyright (c) 2013 Maxime David. All rights reserved.
//

#import "TestController.h"


@interface TestController ()

@end

@implementation TestController
@synthesize myHomeView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        myHomeView = [[HomeView alloc] init];
        [myHomeView.sendBtn addTarget:self action:@selector(sendToWordpressApp:) forControlEvents:UIControlEventTouchUpInside];
        self.view = myHomeView;
    }
    return self;
}

- (void) sendToWordpressApp:(id) sender {
    
 
    
    NSURL* title = [NSURL URLWithString:[[myHomeView.title text] stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    NSURL* post = [NSURL URLWithString:[[myHomeView.post text] stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    NSString* protocolName = @"wordpressTestProtocol";
    NSString* serviceName = @"createPost";
    
    NSString* urlToGo = [NSString stringWithFormat:@"%@://%@?title=%@&post=%@", protocolName, serviceName, title, post];
    NSLog(@"%@", urlToGo);
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlToGo]];
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
