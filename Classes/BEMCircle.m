//
//  BEMCircle.m
//  SimpleLineGraph
//
//  Created by Bobo on 12/27/13. Updated by Sam Spencer on 1/11/14.
//  Copyright (c) 2013 Boris Emorine. All rights reserved.
//  Copyright (c) 2014 Sam Spencer.
//

#import "BEMCircle.h"

@interface BEMCircle()

@property (strong, nonatomic) UIImageView *imageView;

@end

@implementation BEMCircle

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    if (self.image) {
        self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        self.imageView.image = self.image;
        [self addSubview:self.imageView];
    } else {
        CGContextRef ctx = UIGraphicsGetCurrentContext();
        CGContextAddEllipseInRect(ctx, rect);
        [self.Pointcolor set];
        CGContextFillPath(ctx);
    }
}

@end
