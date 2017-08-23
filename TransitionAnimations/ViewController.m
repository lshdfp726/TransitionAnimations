//
//  ViewController.m
//  TransitionAnimations
//
//  Created by fns on 2017/8/23.
//  Copyright © 2017年 lsh726. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) NSArray *images;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.images = @[[UIImage imageNamed:@"1.jpeg"],
                    [UIImage imageNamed:@"2.jpeg"],
                    [UIImage imageNamed:@"3.jpeg"],
                    [UIImage imageNamed:@"4.jpeg"]];
}

- (IBAction)changeImage:(id)sender {
    CATransition *transtition = [CATransition animation];
    transtition.duration = 2.0;
    transtition.type = kCATransitionPush;
    [self.imageView.layer addAnimation:transtition forKey:nil];
    
    UIImage *currentImage = self.imageView.image;
    NSUInteger index = [self.images indexOfObject:currentImage];
    index = (index + 1) %[self.images count];
    self.imageView.image = self.images[index];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
