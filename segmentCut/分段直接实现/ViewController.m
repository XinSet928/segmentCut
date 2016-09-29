//
//  ViewController.m
//  分段直接实现
//
//  Created by mac on 16/7/13.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"
#import "OneViewController.h"
#import "TwoViewController.h"

#define ScreenWidth   [UIScreen mainScreen].bounds.size.width
#define ScreenHeight  [UIScreen mainScreen].bounds.size.height


@interface ViewController (){
    OneViewController *_oneVC;
    TwoViewController *_twoVC;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];

    self.navigationController.navigationBar.barTintColor = [UIColor clearColor];
    //原点
    self.navigationController.navigationBar.translucent = NO;
    
    UISegmentedControl *segment = [[UISegmentedControl alloc] initWithItems:@[@"直播",@"音乐"]];
    segment.tintColor = [UIColor whiteColor];
    segment.selectedSegmentIndex = 0;
    [segment addTarget:self action:@selector(segmentClick:) forControlEvents:UIControlEventValueChanged];
    self.navigationItem.titleView = segment;
    
    //创建控制器的对象
    _oneVC = [[OneViewController alloc] init];
    _oneVC.view.backgroundColor = [UIColor redColor];
    _twoVC = [[TwoViewController alloc] init];
    _twoVC.view.backgroundColor = [UIColor grayColor];
    [self.view addSubview:_oneVC.view];

}

-(void)segmentClick:(UISegmentedControl *)segment{
    
    switch (segment.selectedSegmentIndex) {
        case 0:
            //第一个界面
            [self.view addSubview:_oneVC.view];
            [_twoVC.view removeFromSuperview];
            break;
        case 1:
            [self.view addSubview:_twoVC.view];
            [_oneVC.view removeFromSuperview];
            
            
            break;
        default:
            break;
    }
    
    
    
    
    
    
}


































@end
