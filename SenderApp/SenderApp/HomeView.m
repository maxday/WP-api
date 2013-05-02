//
//  HomeView.m
//  SenderApp
//
//  Created by Maxime David on 2013-05-02.
//  Copyright (c) 2013 Maxime David. All rights reserved.
//

#import "HomeView.h"

@implementation HomeView
@synthesize sendBtn;
@synthesize textToShare;

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor grayColor]];
        
        textToShare = [[UITextField alloc] init];
        [textToShare setFrame:CGRectMake(0, 0, 200, 50)];
        [textToShare setCenter:CGPointMake(160, 100)];
        [textToShare setBorderStyle:UITextBorderStyleLine];
        [textToShare setText:@"Type text to share"];
        
        
        sendBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [sendBtn setFrame:CGRectMake(0, 0, 200, 50)];
        [sendBtn setCenter:CGPointMake(160, 180)];
        [sendBtn setTitle:@"Share with Wordpress" forState:UIControlStateNormal];
        
        [self addSubview:textToShare];
        [self addSubview:sendBtn];

        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
