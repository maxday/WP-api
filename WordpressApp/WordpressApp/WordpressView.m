//
//  WordpressView.m
//  WordpressApp
//
//  Created by Maxime David on 2013-05-02.
//  Copyright (c) 2013 Maxime David. All rights reserved.
//

#import "WordpressView.h"

@implementation WordpressView
@synthesize service;
@synthesize query;

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor grayColor]];
        
        UILabel* serviceLabel = [[UILabel alloc] init];
        [serviceLabel setFrame:CGRectMake(0, 0, 70, 50)];
        [serviceLabel setCenter:CGPointMake(50, 100)];
        [serviceLabel setText:@"Service :"];

        
        service = [[UILabel alloc] init];
        [service setFrame:CGRectMake(0, 0, 200, 50)];
        [service setCenter:CGPointMake(200, 100)];

       

        
        UILabel* queryLabel = [[UILabel alloc] init];
        [queryLabel setFrame:CGRectMake(0, 0, 70, 50)];
        [queryLabel setCenter:CGPointMake(50, 200)];
        [queryLabel setText:@"Query :"];

        query = [[UILabel alloc] init];
        [query setFrame:CGRectMake(0, 0, 200, 200)];
        [query setCenter:CGPointMake(200, 275)];
     
        [self addSubview:serviceLabel];
        [self addSubview:service];
        [self addSubview:queryLabel];
        [self addSubview:query];
        

        
        
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
