//
//  SingletonFirstViewController.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/17.
//  Copyright © 2017年 Xueshan Financial Information Service Co., Ltd. All rights reserved.
//

#import "SingletonFirstViewController.h"

#import "NSObject+Singleton.h"
#import "SingletonPerson.h"
#import "SingletonStudent.h"

@interface SingletonFirstViewController ()

@end

@implementation SingletonFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:true];
    //使用sharedInstance创建类对象；
    SingletonFirstViewController *vc1 = [SingletonFirstViewController sharedInstance];
    SingletonFirstViewController *vc2 = [SingletonFirstViewController sharedInstance];
    NSLog(@"ViewController---vc1地址:%@",vc1);
    NSLog(@"ViewController---vc2地址:%@",vc2);
    
    if (vc1 == vc2) {
        
        NSLog(@"ViewController---vc1 == vc2");
    }
    //循环创建5个Person对象，5个对象都相同；
    for (int i = 0; i < 5; i++) {
        SingletonPerson *per1 = [SingletonPerson sharedInstance];
        NSLog(@"ViewController---per1地址：%@",per1);
    }
    //使用alloc创建对象，每个对象都是不同的；
    for (int i = 0; i < 5; i++) {
        SingletonStudent *stud = [[SingletonStudent alloc] init];
        NSLog(@"ViewController---stud地址：%@",stud);
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
