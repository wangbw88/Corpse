//
//  main.m
//  Corpse
//
//  Created by 王博文 on 15/10/11.
//  Copyright (c) 2015年 王博文. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Corpse.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        Corpse *corpse = [Corpse corpseWhitBlood:50 loseBlood:3];
        
        NSLog(@"输入次数:");
        
        int times = 0;
        
        scanf("%d", &times);
        getchar();
        
        [corpse setTime:times];
        
        NSInteger a = [corpse lastBlood];
        
        if (a < 50) {
            NSLog(@"僵尸收到%ld次攻击",[corpse getTime]);
            NSLog(@"共失血%ld", a);
        }else{
            [corpse death];
        }
    }
    return 0;
}
