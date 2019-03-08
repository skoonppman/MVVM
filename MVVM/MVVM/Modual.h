//
//  Modual.h
//  MVP
//
//  Created by 彭超 on 2019/3/7.
//  Copyright © 2019 彭超. All rights reserved.
//

#ifndef Modual_h
#define Modual_h

@protocol ModualDelegate <NSObject>

-(void)dataUpdated;

@end

@interface Modual : NSObject

@property (nonatomic, strong) NSString* a;
@property (nonatomic, strong) NSString* b;
@property (nonatomic, strong) NSString* c;
@property (nonatomic, weak) id<ModualDelegate> delegate;

-(void)updateData;

@end

#endif /* Modual_h */
