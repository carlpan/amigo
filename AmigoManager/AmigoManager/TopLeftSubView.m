//
//  TopLeftSubView.m
//  AmigoManager
//
//  Created by Carl Pan on 8/6/15.
//  Copyright (c) 2015 Carl Pan. All rights reserved.
//

#import "TopLeftSubView.h"

@implementation TopLeftSubView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
}
*/

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        frame = CGRectMake(70, 230, 300, 300);
    }
    return self;
}

@end
