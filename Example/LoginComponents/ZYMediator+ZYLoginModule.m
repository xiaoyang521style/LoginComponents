//
//  ZYMediator+ZYLoginModule.m
//  LoginComponents_Example
//
//  Created by Apple on 2020/10/29.
//  Copyright © 2020 xiaoyang521style. All rights reserved.
//

#import "ZYMediator+ZYLoginModule.h"

@implementation ZYMediator (ZYLoginModule)
- (UIViewController *)LoginModule_viewControllerWithParam:(NSDictionary *)pararm callback:(void(^)(id result))callback {
    NSMutableDictionary *url_params = [[NSMutableDictionary alloc] init];
    url_params[@"callback"] = callback;
    url_params[@"params"] = pararm;
    return [self performTarget:@"ZYLoginMoudel" action:@"viewController" params:url_params shouldCacheTarget:NO];
}

@end
