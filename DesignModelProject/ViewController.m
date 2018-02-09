//
//  ViewController.m
//  DesignModelProject
//
//  Created by Tibin Zhang on 2017/5/5.
//  Copyright © 2017年 Dreams of Ideal World Co., Ltd. All rights reserved.
//

#import "ViewController.h"

#import "Student.h"
#import "Memo.h"
#import "Caretaker.h"

#import "MetentoCenter.h"
#import "Apple.h"
#import "HYView.h"
#import "NSObject+MetentoCenter.h"

#import "ContentModel.h"
#import "ContentModelAdapter.h"
#import "ContentView.h"
#import "ContentViewAdapter.h"
#import "ItemModel.h"
#import "ItemModelAdapter.h"
#import "ModelAdapter.h"

#import "WaiterFacade.h"

#import "CDDriver.h"

#import "Plane.h"
#import "PlaneA.h"
#import "PlaneB.h"
#import "AbstractRadarMediator.h"
#import "ConcreteRadarMediator.h"

#import "KVOModelA.h"
#import "KVOModelB.h"
#import "NotificationModel.h"
#import "NotificationCenter.h"
#import "CustomerA.h"
#import "SubscriptionServiceCenter.h"

#import "NSObject+Singleton.h"
#import "SingletonPerson.h"
#import "SingletonStudent.h"
#import "Singleton.h"
#import "SingletonFirstViewController.h"
#import "SingletonSecondViewController.h"

#import "PrototypePerson.h"


#import "HandlerLeader.h"
#import "DirectorHandler.h"
#import "VicePresidentHandler.h"
#import "PresidentHandler.h"
#import "BoardDirectorHandler.h"


#import "PriceCalculateStrategy.h"
#import "PriceCalculateContext.h"

@interface ViewController ()<SubscriptionServiceCenterProtocol>

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /** Memento 模式 **/
    Student * stu1 = [[Student alloc] init];
    [stu1 setSName:@"张三"];
    [stu1 setSAddress:@"浦东"];
    [stu1 display];
    
    Caretaker * caretaker = [[Caretaker alloc] init];
    [caretaker setMemo:[stu1 createMemo]];
    
    [stu1 setSName:@"李四"];
    [stu1 setSAddress:@"宝山"];
    [stu1 display];
    
    [stu1 setMemo:[caretaker memo]];
    [stu1 display];
    
    Apple *apple = [[Apple alloc] init];
    apple.name = @"Apple00";
    apple.age = @(21);
//    [MetentoCenter saveMementoObject:apple withKey:@"mementoKey"];
    
    id data = [MetentoCenter mementoObjectWithKey:@"mementoKey"];
    [apple recoverFromState:data];
    NSLog(@"==%@", apple.name);
    NSLog(@"==%@", apple.age);
    
    HYView* view = [[HYView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
//    [view saveStateWithKey:@"HYViewFrame"];
    [view recoverFromStateWithKey:@"HYViewFrame"];
    NSLog(@"%@",NSStringFromCGRect(view.frame));
    
    /* Adapter 模式 */
    /*========================类适配器===========================*/
    ContentModel *contentModel = [[ContentModel alloc] init];
    contentModel.contentStr = @"时间：10：32：12";
    contentModel.imageName = @"shijian";
    ContentViewAdapter *modelAdapter = [[ContentModelAdapter alloc] initWithData:contentModel];
    ContentView *contentView = [[ContentView alloc] initWithFrame:CGRectMake(100, 200, 200, 20)];
    [contentView loadData:modelAdapter];
    [self.view addSubview:contentView];
    
    ItemModel *itemModel = [[ItemModel alloc] init];
    itemModel.contentStr = @"心率：100次";
    itemModel.image = [UIImage imageNamed:@"mapHeaderIcon"];
    ContentViewAdapter *modelAdapter1 = [[ItemModelAdapter alloc] initWithData:itemModel];
    ContentView *contentView1 = [[ContentView alloc] initWithFrame:CGRectMake(100, 300, 200, 20)];
    [contentView1 loadData:modelAdapter1];
    [self.view addSubview:contentView1];
    
    /*========================对象适配器===========================*/
    ItemModel *itemModel1 = [[ItemModel alloc] init];
    itemModel1.contentStr = @"心率：100次";
    itemModel1.image = [UIImage imageNamed:@"mapHeaderIcon"];
    ContentViewAdapter *modelAdapter2 = [[ItemModelAdapter alloc] initWithData:itemModel1];
    ContentView *contentView2 = [[ContentView alloc]initWithFrame:CGRectMake(100, 400, 200, 20)];
    [contentView2 loadData:modelAdapter2];
    [self.view addSubview:contentView2];
    
    ContentModel * contentModel2 = [[ContentModel alloc] init];
    contentModel2.contentStr = @"时间：12：32：10";
    contentModel2.imageName = @"shijian";
    ContentViewAdapter *modelAdapter3 = [[ModelAdapter alloc] initWithData:contentModel2];
    ContentView *contentView3 = [[ContentView alloc]initWithFrame:CGRectMake(100, 500, 200, 20)];
    [contentView3 loadData:modelAdapter3];
    [self.view addSubview:contentView3];
    
    
    /** Facade 模式 **/
    WaiterFacade *waiter = [[WaiterFacade alloc] init];
//    [waiter buyCarWithCash];//现金买车
    [waiter buyCarWithLoan];//贷款买车
    
    
    /** Mediator 模式 **/
    CDDriver *driver = [CDDriver new];
    [driver readCD];
    
    Plane *planeA = [[PlaneA alloc] init];
    PlaneB *planeB = [[PlaneB alloc] init];
    AbstractRadarMediator *radarMediator = [[ConcreteRadarMediator alloc] initWithPlaneA:planeA planeB:planeB];
    planeA.radarMediator = radarMediator;
    planeB.radarMediator = radarMediator;
    planeA.distance = 800;
    planeB.distance = 1000.0f;
    [planeA noticeLocation];
    NSLog(@"飞机B收到A的位置通知:%f", planeB.otherPlaneDistance);
    [planeB noticeLocation];
    NSLog(@"飞机A收到B的位置通知:%f", planeA.otherPlaneDistance);
    
    
    /**  KVO 键值观察  **/
    //http://www.cnblogs.com/goodboy-heyang/p/5265675.html
    // 创建两个对象 modelA 和 modelB
    KVOModelA *modelA = [[KVOModelA alloc] init];
    KVOModelB *modelB = [[KVOModelB alloc] init];
    // add Observer ： 添加观察者（modelA 添加观察者，这个观察者对象是 modelB）
    // modelB 观察 modelA 的变化
    [modelA addObserver:modelB forKeyPath:@"name" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
    // 使用定时器，2秒之后，改变modelA 的 name 属性，然后打印 modelB 的name属性
    [self delay:2 execute:^{
        modelA.name = @"Hello";
        NSLog(@"B name = %@", modelB.name);
        // 最后 modelA 要移除观察者
        [modelA removeObserver:modelB forKeyPath:@"name"];
    }];
    
    
    /** Notification **/
    NotificationModel *notificationModel = [[NotificationModel alloc] init];
    // 添加观察者 notification, 当通知中心发消息，就会触发 notification对象中的 fun: 方法
    
    [NotificationCenter addObserver:notificationModel selector:@selector(func:) flag:@"A"];
    // 通知中心通过 flag 标志，找到对应的对象，然后给他发消息
    [NotificationCenter sendMessage:@"Hello ,notificationModel" toFlag:@"A"];
    // 移除观察者
    [NotificationCenter removeObserver:notificationModel flag:@"A"];
    
    NotificationModel *notificationModelB = [[NotificationModel alloc] init];
    [NotificationCenter addObserver:notificationModelB selector:@selector(func:) flag:@"B"];
    [NotificationCenter sendMessage:@"Hello modelB" toFlag:@"B"];
    [NotificationCenter removeObserver:notificationModelB flag:@"B"];
    
    
    /**  Observer  **/
    NSString *SCIENCE = @"SCIENCE";
    // 创建订阅号
    [SubscriptionServiceCenter createSubscriptionNumber:SCIENCE];
    
    // 添加第一个订阅的用户到指定的刊物，这里的用户就是当前self：ViewController对象
    [SubscriptionServiceCenter addCustomer:self
                    withSubscriptionNumber:SCIENCE];
    
    // 添加第二个订阅的用户到指定的刊物，这里的用户就是a：CustomerA对象
    CustomerA *customerA = [CustomerA new];
    [SubscriptionServiceCenter addCustomer:customerA withSubscriptionNumber:SCIENCE];
    
    // 发行机构发送消息
    [SubscriptionServiceCenter sendMessage:@"V1.0" toSubscriptionNumber:SCIENCE];
    
    
    /** Singleton 模式 **/
    // http://blog.csdn.net/CHENYUFENG1991/article/details/50396987
    //单例的结果就是，调用类方法，只返回一个共有的对象
    /**
     *  single和single2是同一个对象；
     因为返回的数据是一个静态变量，全局唯一；
     */
    Singleton *single = [Singleton sharedInstance];
    Singleton *single2 = [Singleton sharedInstance];
    if (single == single2) {
        
        NSLog(@"single == single2");
    }
    NSLog(@"single地址：%@",single);
    NSLog(@"single2地址：%@",single2);
    
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
    
    
    /** Prototype Pattern 原型模式 **/
    PrototypePerson *person = [[PrototypePerson alloc] init];
    person.name = @"张三";
    person.gender = PrototypeGenderMale;
    person.age = 23;
    person.height = 176.4;
    
    //深拷贝
    PrototypePerson *person1 = [person copy];//在复制后得到的副本，又可以分为可变副本(mutable copy)和不可变副本(immutable copy)。
    NSLog(@"deepCopy name = %@  age = %lu", person1.name, person1.age);
    //浅拷贝
    PrototypePerson *person2 = person;
    NSLog(@"shallowCopy name = %@ age=%lu", person2.name, person2.age);
    person2.name = @"李四";
    person2.age = 40;
    NSLog(@"deepCopy person1 name = %@ age = %lu", person1.name, person1.age);
    NSLog(@"shallowCopy person name = %@ age = %lu", person.name, person.age);
    
    NSString *strSource = [NSString stringWithFormat:@"I am %@",@"ligf"];
    // 使用mutableCopy方法,strSource和strCopy内存地址不一致,两者的引用计数均为1
    // 此时是深拷贝
    NSString *strCopy = [strSource mutableCopy];//深拷贝
    NSString *strCopy1 = [strSource copy];//浅拷贝
    NSLog(@"原始字符串:%p,%@",strSource,strSource);
    NSLog(@"复制字符串:%p,%@ \n %p %@",strCopy,strCopy, strCopy1, strCopy1);
    
    
    /**  Chain of Responsibility 责任链模式  **/
    DirectorHandler *directorHandler = [[DirectorHandler alloc] init];
    VicePresidentHandler *vicePresident = [[VicePresidentHandler alloc] init];
    PresidentHandler *president = [[PresidentHandler alloc] init];
    BoardDirectorHandler *boardHandler = [[BoardDirectorHandler alloc] init];
    directorHandler.superior = vicePresident;
    vicePresident.superior = president;
    president.superior = boardHandler;
    [directorHandler handlePurchaseApplication:59900];
    
    
    /**  Strategy 策略模式  **/
//    PriceCalculateStrategy *priceStrategy = [[PriceCalculateStrategy alloc] init];
    PriceCalculateContext *priceContext0 = [[PriceCalculateContext alloc] initWithMemberType:0];
    PriceCalculateContext *priceContext1 = [[PriceCalculateContext alloc] initWithMemberType:1];
    PriceCalculateContext *priceContext2 = [[PriceCalculateContext alloc] initWithMemberType:2];
    PriceCalculateContext *priceContext3 = [[PriceCalculateContext alloc] initWithMemberType:3];
    [priceContext0 goodsFinalPriceWithPrice:1000];//普通会员
    [priceContext1 goodsFinalPriceWithPrice:1000];//中级会员
    [priceContext2 goodsFinalPriceWithPrice:1000];//高级会员
    [priceContext3 goodsFinalPriceWithPrice:1000];//其他
    
    
    
}

- (void)delay:(CGFloat)delay execute:(dispatch_block_t)main_queue_block
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delay * NSEC_PER_SEC)), dispatch_get_main_queue(), main_queue_block);
}

#pragma mark - SubscriptionServiceCenterProtocol
- (void)subscriptionMessage:(id)message subscriptionNumber:(NSString *)subscriptionNumber {
    NSLog(@"%@  %@", message, subscriptionNumber);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
