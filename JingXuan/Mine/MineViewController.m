//
//  MineViewController.m
//  JingXuan
//
//  Created by sfs on 2017/12/6.
//  Copyright © 2017年 rhjt. All rights reserved.
//

#import "MineViewController.h"
#import "MineView.h"
@interface MineViewController ()

@end

@implementation MineViewController
- (instancetype)init{
    self = [super init];
    if (self) {
        self.view = [[MineView alloc] initWithFrame:self.view.frame];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
