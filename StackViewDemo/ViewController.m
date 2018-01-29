//
//  ViewController.m
//  StackViewDemo
//
//  Created by 冯振伟 on 2018/1/29.
//  Copyright © 2018年 冯振伟. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *iamgeView1;
@property (weak, nonatomic) IBOutlet UIImageView *iamgeView2;
@property (weak, nonatomic) IBOutlet UIImageView *iamgeView3;
@property (nonatomic,assign) BOOL isLarge;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    NSArray * imageArr = @[self.iamgeView1, self.iamgeView2, self.iamgeView3];
    
    for (NSInteger i = 0; i< 2; i++) {
        UITapGestureRecognizer * gesture  = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(click:)];
        [imageArr[i] addGestureRecognizer:gesture];
    }
}

- (void)click:(UITapGestureRecognizer *)gesture {
    NSInteger num =  gesture.view.tag;
    self.isLarge  = !self.isLarge;
    switch (num) {
        case 1000:
            if (self.isLarge) {
                [UIView animateWithDuration:1 animations:^{
                    self.iamgeView2.hidden = YES;
                    self.iamgeView3.hidden = YES;
                }];
            } else {
                [UIView animateWithDuration:1 animations:^{
                    self.iamgeView2.hidden = NO;
                    self.iamgeView3.hidden = NO;
                }];
            }
            break;
        case 1002:
            if (self.isLarge) {
                [UIView animateWithDuration:1 animations:^{
                    self.iamgeView1.hidden = YES;
                    self.iamgeView2.hidden = YES;
                }];
            } else {
                [UIView animateWithDuration:1 animations:^{
                    self.iamgeView1.hidden = NO;
                    self.iamgeView2.hidden = NO;
                }];
            }

            break;
        case 1001:
            if (self.isLarge) {
                [UIView animateWithDuration:1 animations:^{
                    self.iamgeView1.hidden = YES;
                    self.iamgeView3.hidden = YES;
                }];
            } else {
                [UIView animateWithDuration:1 animations:^{
                    self.iamgeView1.hidden = NO;
                    self.iamgeView3.hidden = NO;
                }];
            }
            break;
        default:
            break;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
