//
//  Present.m
//  MVP
//
//  Created by 彭超 on 2019/3/7.
//  Copyright © 2019 彭超. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewModule.h"
#import "Modual.h"

@interface ViewModule()<ModualDelegate>

@property (nonatomic, strong)Modual*  modual;


@end

@implementation ViewModule

-(instancetype)init
{
    self = [super init];
    if(self)
    {
        _result = @"init";
    }
    
    return self;
}

-(void)doSomeThing
{
    [self addObserver:self forKeyPath:@"result" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld|NSKeyValueObservingOptionInitial context:nil];
    
    _modual = [[Modual alloc] init];
    _modual.delegate = self;
    [_modual updateData];
    //todo
    
}

-(void)dataUpdated
{
    _result = [NSString stringWithFormat:@"%@%@%@",_modual.a,_modual.b,_modual.c];
    
    //如果result值变了更新ViewcController中的label的值
    
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    
    NSLog(@"%@ change",change[NSKeyValueChangeNewKey]);
    
    if([keyPath isEqualToString:@"result"])
    {
        if(!change[NSKeyValueChangeNewKey])
        {
            return;
        }
        self.successBlock(change[NSKeyValueChangeNewKey]);
    }
}

@end
