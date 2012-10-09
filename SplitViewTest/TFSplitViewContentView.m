//
//  TFSplitView.m
//  SplitViewTest
//
//  Created by Tom Fewster on 15/09/2012.
//  Copyright (c) 2012 Tom Fewster. All rights reserved.
//

#import "TFSplitViewContentView.h"

@implementation TFSplitViewContentView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    // Drawing code here.
}

- (void)awakeFromNib {
	for (NSLayoutConstraint *constraint in self.constraints) {
		NSLog(@"%@", constraint);
		if (constraint.firstAttribute == NSLayoutAttributeWidth && constraint.relation ==  NSLayoutRelationEqual) {
			[self removeConstraint:constraint];
		}
	}
}

@end
