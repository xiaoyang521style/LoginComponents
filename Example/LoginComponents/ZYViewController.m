//
//  ZYViewController.m
//  LoginComponents
//
//  Created by xiaoyang521style on 10/28/2020.
//  Copyright (c) 2020 xiaoyang521style. All rights reserved.
//

#import "ZYViewController.h"
#import "ZYMediator+ZYLoginModule.h"
@interface ZYViewController ()

@end

@implementation ZYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UIViewController *VC = [[ZYMediator sharedInstance]LoginModule_viewControllerWithParam:@{} callback:^(NSString * _Nonnull result) {
        NSLog(@"resultA: --- %@", result);
    }];
    [self.navigationController pushViewController:VC animated:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
