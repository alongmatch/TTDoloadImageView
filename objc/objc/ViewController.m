//
//  ViewController.m
//  objc
//
//  Created by sumshile on 2017/5/7.
//  Copyright © 2017年 sumshile. All rights reserved.
//

#import "ViewController.h"
#import<objc/runtime.h>
#import "Presen.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self test];
    [self test1];
    [self test2];
}
-(void)test
{
    unsigned int count;
    objc_property_t* propertyS= class_copyPropertyList([Presen class], &count);
    for (int i=0; i<count; i++)
    {
        objc_property_t proper=propertyS[i];
      const char* ch=property_getName(proper);
        NSLog(@"%@",[NSString stringWithUTF8String:ch]);
    }
}
-(void)test1
{
    unsigned int count;
    Ivar* propertyS= class_copyIvarList([Presen class], &count);
    for (int i=0; i<count; i++)
    {
        Ivar proper=propertyS[i];
        const char* ch=ivar_getName(proper);
        NSLog(@"%@",[NSString stringWithUTF8String:ch]);
    }
}
-(void)test2
{
    unsigned int count;
    Method* propertyS= class_copyMethodList([Presen class], &count);
    for (int i=0; i<count; i++)
    {
        Method property=propertyS[i];
        
        SEL ch=method_getName(property);
        
        NSLog(@"%@",[NSString stringWithUTF8String:ch]);
    }
}
@end
