//
//  ViewController.m
//  UIButton
//
//  Created by 仲雯 on 2020/7/13.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) createBtn {
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(100, 100, 100, 40);
    
    [btn setTitle:@"按钮" forState:UIControlStateNormal];

    
    [btn addTarget:self action: @selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton* btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn1.frame = CGRectMake(100, 200, 80, 40);
    [btn1 setTitle:@"按钮1" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    btn.tag = 101;
    btn1.tag = 102;
    [self.view addSubview:btn1];
    [self.view addSubview:btn];
}
- (void)pressBtn: (UIButton *) btn{
    if(btn.tag == 101){
        NSLog(@"press1 the button");
    }
    if(btn.tag == 102){
        NSLog(@"press2 the button");
    }
}
- (void)pressBtn1{
    NSLog(@"press 1 the button");
}
/*创建普通按钮
- (void) createUIRectButton {
    //创建一个btn对象，根据类型来创建btn
    //圆角类型btn：UIButtonTypeRoundedRect
    //通过类方法创建：类名+方法名
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(100, 100, 100, 30);
    
    //
    [btn setTitle:@"按钮1" forState:UIControlStateNormal];
    [btn setTitle:@"按下状态" forState:UIControlStateHighlighted];
    
    btn.backgroundColor = [UIColor grayColor];
    
    [btn setTintColor:[UIColor whiteColor]];
    [btn setTitleColor: [UIColor redColor]forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
    btn.titleLabel.font = [UIFont systemFontOfSize:13];
    [self.view addSubview:btn];
}

- (void) creatImageBtn {
    UIButton* btnImage = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btnImage.frame = CGRectMake(100, 200, 100, 100);
    
    UIImage* icon01 = [UIImage imageNamed:@"btn01.jpg"];
    UIImage* icon02 = [UIImage imageNamed:@"btn02.jpg"];
    
    [btnImage setImage:icon01 forState:UIControlStateNormal];
    [btnImage setImage:icon02 forState:UIControlStateHighlighted];
    [self.view addSubview:btnImage];
}*/
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   // [self createUIRectButton];
    //[self creatImageBtn];
    [self createBtn];
}


@end
