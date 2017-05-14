//
//  ViewController.m
//  科技头条
//
//  Created by sumshile on 2017/5/7.
//  Copyright © 2017年 sumshile. All rights reserved.
//

#import "ViewController.h"
#import "TTNewsModel.h"
#import "YYModel.h"
#import "TTNewsCell.h"
@interface ViewController ()<UIGestureRecognizerDelegate>
@property(nonatomic,strong)NSArray* newsArray;

@end

@implementation ViewController
-(NSArray *)newsArray
{
    if (_newsArray==nil)
    {
        _newsArray=[NSArray array];
        
    }
    return _newsArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadData1:self.tableView];
    
}
- (IBAction)loadData1:(id)sender {
    [[[NSURLSession sharedSession] dataTaskWithURL:[NSURL URLWithString:@"http://news.coolban.com/Api/Index/news_list/app/2/cat/0/limit/60/time/1480129563/type/0?channel=appstore&uuid=C0624B7F-F419-45E2-A556-C026C52500AE&net=5&model=iPhone&ver=1.0.5"] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error==nil)
        {
            id jsonData=[NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            self.newsArray=[NSArray yy_modelArrayWithClass:[TTNewsModel class] json:jsonData];
            [[NSOperationQueue mainQueue]addOperationWithBlock:^{
                [self.refreshControl endRefreshing];
                [self.tableView reloadData];
            }];
        }
        else
        {
            NSLog(@"%@",error);
        }
    }] resume];
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.newsArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TTNewsCell* cell=[tableView dequeueReusableCellWithIdentifier:@"News" forIndexPath:indexPath];
    cell.model=self.newsArray[indexPath.row];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
