//
//  SingletonSecondViewController.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/17.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "SingletonSecondViewController.h"

#import "NSObject+Singleton.h"
#import "SingletonPerson.h"
#import "SingletonStudent.h"

@interface SingletonSecondViewController ()

@end

@implementation SingletonSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
    SingletonSecondViewController *secondVc1 = [SingletonSecondViewController sharedInstance];
    SingletonSecondViewController *secondVc2 = [SingletonSecondViewController sharedInstance];
    NSLog(@"SecondViewController---secondVc1地址:%@",secondVc1);
    NSLog(@"SecondViewController---secondVc2地址:%@",secondVc2);
    
    if (secondVc1 == secondVc2) {
        
        NSLog(@"SecondViewController---secondVc1 == secondVc2");
    }
    
    for (int i = 0; i < 5; i++) {
        
        SingletonPerson *per1 = [SingletonPerson sharedInstance];
        NSLog(@"SecondViewController---per1地址：%@",per1);
    }
    for (int i = 0; i < 5; i++) {
        SingletonStudent *stud = [[SingletonStudent alloc] init];
        NSLog(@"SecondViewController---stud地址：%@",stud);
    }
}

/**
 *  返回上一界面，再次生成对象查看；
 */

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
