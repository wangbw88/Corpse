//
//  Corpse.h
//  Corpse
//
//  Created by 王博文 on 15/10/11.
//  Copyright (c) 2015年 王博文. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Corpse : NSObject

{
    NSInteger _blood;
    NSInteger _loseBool;
    NSInteger _time;
    
}

- (void)setTime:(NSInteger)time;
- (NSInteger)getTime;

- (instancetype)initWhitBool:(NSInteger)blood
                   loseBlood:(NSInteger)loseBlood;


+ (instancetype)corpseWhitBlood:(NSInteger)blood
                      loseBlood:(NSInteger)loseBlood;


- (void)loseBlood:(NSInteger)loseBlood;






- (NSInteger)lastBlood;


- (void)death;


@end
