//
//  CusTabViewController.m
//  SwizzlingTabbarDemo
//
//  Created by hzc on 2017/12/26.
//  Copyright © 2017年 黄章成. All rights reserved.
//

#import "CusTabViewController.h"
#import "ViewController.h"

#define RANDOM_COLOR [UIColor colorWithHue: (arc4random() % 256 / 256.0) saturation:((arc4random()% 128 / 256.0 ) + 0.5) brightness:(( arc4random() % 128 / 256.0 ) + 0.5) alpha:1]

@interface CusTabViewController ()

@end

@implementation CusTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupTabBarChildController];
}
- (void)setupTabBarChildController {
    
    NSArray *imageArray = @[@"tab_home", @"tab_tz", @"tiger", @"tab_home", @"tab_tz"];
    NSArray *titleArray = @[@"首页", @"理财", @"", @"发现", @"我的"];
    
    for (int i = 0; i < imageArray.count; i++) {
        ViewController *vc = [ViewController new];
        [vc.view setBackgroundColor:RANDOM_COLOR];
        
        vc.tabBarItem.image = [[UIImage imageNamed:imageArray[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        vc.tabBarItem.selectedImage = [[UIImage imageNamed:[imageArray[i] stringByAppendingString:@"_sel"]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        vc.title = titleArray[i];
        
//                if (i == 3) vc.tabBarItem.badgeValue = @"99";
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
        [self addChildViewController:nav];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
