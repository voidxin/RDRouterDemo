//
//  RDRouter.m
//  RouterDemo
//
//  Created by 张新 on 16/8/16.
//  Copyright © 2016年 voidxin. All rights reserved.
//

#import "RDRouter.h"
#import "HHRouter.h"
#import "RDModelViewController.h"
#import "RDURLViewController.h"
@implementation RDRouter
+ (RDRouter *)shareManager{
    static RDRouter *router=nil;
    static dispatch_once_t oncet;
    dispatch_once(&oncet, ^{
        router=[[self alloc]init];
    });
    return router;
}

-(void)createRouterForAllControllers{
    
    [[HHRouter shared] map:@"/modelVC/:title/:model" toControllerClass:[RDModelViewController class]];
  
    [[HHRouter shared] map:@"/vc/:title/:urlStr" toControllerClass:[RDURLViewController class]];
   
}

@end
