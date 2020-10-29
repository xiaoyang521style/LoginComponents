//
//  ZYTarget_Login.m
//  LoginComponents_Example
//
//  Created by Apple on 2020/10/29.
//  Copyright © 2020 xiaoyang521style. All rights reserved.
//

#import "Target_ZYLoginMoudel.h"
#import "ZYLoginViewController.h"
@implementation Target_ZYLoginMoudel
- (UIViewController *)Action_viewController:(NSDictionary *)params {
    ZYLoginViewController *vc = [[ZYLoginViewController alloc]initWithParams:params];
    return vc;
}
@end
