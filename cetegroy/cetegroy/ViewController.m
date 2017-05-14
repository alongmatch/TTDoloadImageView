//
//  ViewController.m
//  cetegroy
//
//  Created by sumshile on 2017/5/8.
//  Copyright © 2017年 sumshile. All rights reserved.
//

#import "ViewController.h"
#import "TTPrenson.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    TTPrenson* prenson=[TTPrenson new];
    [prenson loading];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
