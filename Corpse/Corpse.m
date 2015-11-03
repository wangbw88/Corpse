//
//  Corpse.m
//  Corpse
//
//  Created by 王博文 on 15/10/11.
//  Copyright (c) 2015年 王博文. All rights reserved.
//

#import "Corpse.h"

@implementation Corpse



- (void)setTime:(NSInteger)time{
    _time = time;
}
- (NSInteger)getTime{
    return _time;
}

- (instancetype)init{
    
    self = [super init];
    if (self) {
        return self;
    }
    return nil;
}

- (instancetype)initWhitBool:(NSInteger)blood
                   loseBlood:(NSInteger)loseBlood{
    
    self = [self init];
    if (self) {
        _blood = blood;
        _loseBool = loseBlood;
    }
    return self;
}


+ (instancetype)corpseWhitBlood:(NSInteger)blood
                      loseBlood:(NSInteger)loseBlood{
    
    Corpse *corpse = [[Corpse alloc] initWhitBool:blood loseBlood:loseBlood];
    
    return corpse;
    
}


- (void)loseBlood:(NSInteger)loseBlood{
    
    NSLog(@"每次掉%ld滴血", _loseBool);
}




- (NSInteger)lastBlood{
    
    NSInteger lasrBlood =  _loseBool * _time;
    
    return lasrBlood;
 
}


- (void)death{
    
    NSLog(@"僵尸死亡");
}














@end
