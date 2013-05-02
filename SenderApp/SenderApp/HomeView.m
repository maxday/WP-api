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
@synthesize title;
@synthesize post;

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor grayColor]];
        
        title = [[UITextField alloc] init];
        [title setFrame:CGRectMake(0, 0, 200, 50)];
        [title setCenter:CGPointMake(160, 100)];
        [title setBorderStyle:UITextBorderStyleLine];
        [title setText:@"Title"];
        
        post = [[UITextField alloc] init];
        [post setFrame:CGRectMake(0, 0, 200, 50)];
        [post setCenter:CGPointMake(160, 150)];
        [post setBorderStyle:UITextBorderStyleLine];
        [post setText:@"Body"];
        
        
        sendBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [sendBtn setFrame:CGRectMake(0, 0, 200, 50)];
        [sendBtn setCenter:CGPointMake(160, 200)];
        [sendBtn setTitle:@"Share with Wordpress" forState:UIControlStateNormal];
        
        [self addSubview:title];
        [self addSubview:post];
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
