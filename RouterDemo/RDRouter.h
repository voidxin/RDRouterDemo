//
//  RDRouter.h
//  RouterDemo
//
//  Created by 张新 on 16/8/16.
//  Copyright © 2016年 voidxin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface RDRouter : NSObject
+ (RDRouter *)shareManager;

-(void)createRouterForAllControllers;
@end
