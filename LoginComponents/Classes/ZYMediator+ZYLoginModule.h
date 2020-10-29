//
//  ZYMediator+ZYLoginModule.h
//  LoginComponents_Example
//
//  Created by Apple on 2020/10/29.
//  Copyright © 2020 xiaoyang521style. All rights reserved.
//

#import <ZYMediator/ZYMediator.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZYMediator (ZYLoginModule)
- (UIViewController *)LoginModule_viewControllerWithParam:(NSDictionary *)pararm callback:(void(^)(NSString *result))callback;
@end

NS_ASSUME_NONNULL_END
