//
//  Modual.m
//  MVP
//
//  Created by 彭超 on 2019/3/7.
//  Copyright © 2019 彭超. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Modual.h"

@implementation Modual

-(void)updateData
{
    _a = @"aa";
    _b = @"bb";
    _c = @"cc";
    
    if([self.delegate respondsToSelector:@selector(dataUpdated)])
    {
        [self.delegate dataUpdated];
    }
}

@end
