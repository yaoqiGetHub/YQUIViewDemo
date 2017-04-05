//
//  ViewController.m
//  YQUIViewDemo
//
//  Created by yaoqi on 17/4/5.
//  Copyright © 2017年 yaoqi. All rights reserved.
//

#import "ViewController.h"
#import "YQCustomeView.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSString *pointStr = @"{89,9}";
    CGPoint ss = CGPointFromString(pointStr);//将string类型转化成CGPoint类型
    NSLog(@"%f",ss.y);
    
    YQCustomeView *aview = [[YQCustomeView alloc] init];
    aview.frame = CGRectMake(90, 9, 90, 90);
    aview.backgroundColor = [UIColor blueColor];
    CGAffineTransform form = CGAffineTransformMakeRotation(3223);//旋转
    aview.transform = form;
    [self.view addSubview:aview];
    [self.view didAddSubview:aview];
    
//    CGAffineTransform transform = CGAffineTransformMakeRotation(angle);
    //缩放
//    CGAffineTransform transform = CGAffineTransformMakeScale(0.5f,0.5f);
//    //改变位置的
//    CGAffineTransform transform = CGAffineTransformMakeTranslation(50,60);
    
    //修改CGAffineTransform
    //修改 缩放
//    CGAffineTransform scaled = CGAffineTransformScale(transform, degree, degree);
//    //修改 位置
//    CGAffineTransform transform = CGAffineTransformTranslate(
//                                                             CGAffineTransform t,
//                                                             CGFloat tx,
//                                                             CGFloat ty
//                                                             );  
//    
//    //修改角度   
//    CGAffineTransform transform = CGAffineTransformRotate (  
//                                                           CGAffineTransform t,  
//                                                           CGFloat angle  
//                                                           );
    //最后设置到VIEW
//    [self.view setTransform:scaled];
    

//    如果子视图超出父视图范围是否裁剪子视图  默认是NO
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(40, 40, 100, 120)];
    aview.clipsToBounds = YES;
    redView.backgroundColor = [UIColor redColor];
    [aview addSubview:redView];
    
//    userInteractionEnabled 是否可以进行用户交互
    /*
     如果可一个用户交互那么这个视图 可以接收点击，子视图也可以接收点击事件
     谁在在上方谁想接受点击 最上方的会拦截
     如果设置为NO 子视图和父视图都不能接受点击事件，那么这个点击就会向下层传递知道能被接受事件的控件接收 如果最后没有控件接受这个事件 事件将会被抛弃
     UILabel UIIImageView userInteractionEnabled默认是NO，不可以和用户进行交互
     如果button 粘贴到UILabel 和UIIImageView上 button是不能被点击
     如果想要能点击button 就要把UILabel 和 UIIImageView 的userInteractionEnabled改为YES
     */
    
    //获取所有子视图的数组
//    NSArray * subViews = redView.subviews;
    
    UIView *s_view = [self.view viewWithTag:3];//父亲视图，通过tag来找到对应的子视图，不一定是直接视图，子视图的子视图也是可以找到的,就是从某个节点，遍历以下的所有节点，不一定是直接节点。
}

- (void)animationFinished:(id)view {
    NSLog(@"ss");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
