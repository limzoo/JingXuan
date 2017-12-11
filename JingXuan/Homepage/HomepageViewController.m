//
//  HomepageViewController.m
//  JingXuan
//
//  Created by sfs on 2017/12/6.
//  Copyright © 2017年 rhjt. All rights reserved.
//

#import "HomepageViewController.h"
#import "HompageView.h"
@interface HomepageViewController ()
@property (nonatomic, strong) UISearchBar *searchBar;
@end

@implementation HomepageViewController
- (instancetype)init{
    self = [super init];
    if (self) {
        HompageView *view = [[HompageView alloc] initWithFrame:self.view.frame];
        self.view = view;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationController.navigationBar.hidden = YES;
    
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
