//
//  ViewController.m
//  SlideshowApp
//
//  Created by 井上圭一 on 2016/01/07.
//  Copyright © 2016年 keiichi, inoue. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    UIImageView *aImageView;
    NSInteger countNumber;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setupBackground];
    [self setupButton];
}
-(void)setupBackground{
    aImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 375, 667)];
    aImageView.image = [UIImage imageNamed:@"img0.png"];
    [self.view addSubview:aImageView];
}
-(void)setupButton{
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    button1.frame = CGRectMake(0, 0, 120, 45);
    button1.center = CGPointMake(250, 620);
    [button1 setTitle:@"進む" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(changeImage1:)
      forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
     
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    button2.frame = CGRectMake(0, 0, 120, 45);
    button2.center = CGPointMake(125, 620);
    [button2 setTitle:@"戻る" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(changeImage2:)
      forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
}
-(void)changeImage1:(id)sender{
    countNumber++;
    if (countNumber == 4) {
        countNumber = 0;
    }
    aImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"img%ld.png", (long)countNumber]];
}
-(void)changeImage2:(id)sender{
    countNumber--;
    if (countNumber < 0 ) {
        countNumber = 3;
    }
    aImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"img%ld.png", (long)countNumber]];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
