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
    
    /* http://stackoverflow.com/questions/8088473/url-encode-a-nsstring */
    NSString* title = [myHomeView.title text];
    title = (__bridge NSString *)CFURLCreateStringByAddingPercentEscapes(
                                                                        NULL,
                                                                        (CFStringRef)title,
                                                                        NULL,
                                                                        (CFStringRef)@"!*'();:@&=+$,/?%#[]",
                                                                        kCFStringEncodingUTF8 );
    NSString* post = [myHomeView.post text];
    post = (__bridge NSString *)CFURLCreateStringByAddingPercentEscapes(
                                                                         NULL,
                                                                         (CFStringRef)post,
                                                                         NULL,
                                                                         (CFStringRef)@"!*'();:@&=+$,/?%#[]",
                                                                         kCFStringEncodingUTF8 );    NSString* protocolName = @"wordpressTestProtocol";
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
