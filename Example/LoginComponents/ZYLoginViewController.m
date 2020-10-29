//
//  ZYLoginViewController.m
//  LoginComponents_Example
//
//  Created by Apple on 2020/10/29.
//  Copyright © 2020 xiaoyang521style. All rights reserved.
//

#import "ZYLoginViewController.h"

@interface ZYLoginViewController ()
@property(nonatomic, copy)NSDictionary *params;
@property(nonatomic, copy)void(^callBackBlock) (NSString *);
@end

@implementation ZYLoginViewController

-(instancetype)initWithParams:(NSDictionary *)params {
    if ([super init]) {
        self.callBackBlock = params[@"callback"];
        self.params = params[@"params"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"我是登录组件";
    self.view.backgroundColor = [UIColor redColor];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.frame = CGRectMake(0, 250, 300, 100);
    btn2.backgroundColor = [UIColor greenColor];
    btn2.center = self.view.center;
    [btn2 setTitle:@"参数回调" forState: UIControlStateNormal];
    [btn2 addTarget:self action:@selector(callback) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    // Do any additional setup after loading the view.
}
-(void)callback{
    self.callBackBlock(@"我是回调参数");
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
