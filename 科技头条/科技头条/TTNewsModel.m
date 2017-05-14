//
//  TTNewsModel.m
//  科技头条
//
//  Created by sumshile on 2017/5/7.
//  Copyright © 2017年 sumshile. All rights reserved.
//

#import "TTNewsModel.h"

@implementation TTNewsModel
-(void)setValue:(id)value forUndefinedKey:(NSString *)key
{

}
- (NSString *)addtime {
    
    // 获取当前日历
    NSCalendar *cal = [NSCalendar currentCalendar];
    
    // 获取时间戳对应的日期
    NSDate *addDate = [NSDate dateWithTimeIntervalSince1970:_addtime.integerValue];
    
    
    // 测试 : 把时间戳对应的日期 向前 推一天,为了测试一天之前的新闻发布时间的展示 (没有实际意义)
    //    addDate = [addDate dateByAddingTimeInterval:-60*60*30];
    //    NSLog(@"%@",addDate.description);
    
    // 判断新闻发布时间是否是今天
    if ([cal isDateInToday:addDate]) {
        
        // 获取时间戳对应的日期距离现在的"秒数"
        // 提示 : 因为时间戳对应的日期
        NSInteger timeInterval = -[addDate timeIntervalSinceNow];
        
        
        // 如果时间间隔在60秒以内 (刚刚)
        if (timeInterval < 60) {
            return @"刚刚";
        }
        
        // 如果时间间隔在一小时以内 (几分钟前)
        if (timeInterval < 3600) {
            return [NSString stringWithFormat:@"%zd分钟前",timeInterval / 60];
        }
        
        // 如果不是60秒以内,也不是3600秒以内(一小时),那么就是超过一小时 (几小时前)
        return [NSString stringWithFormat:@"%zd小时前",timeInterval / 3600];
    }
    
    // 能够执行到这里说明 : 新闻发布的日期是在一天之前 (11-28 08:15)
    // 创建日期格式器
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    // 使用日期格式器去 指定要展示的日期的格式 (yyyy(年)-MM(月)-dd(日) HH(时):mm(分):ss(秒))
    formatter.dateFormat = @"MM-dd HH:mm";
    // 把时间戳对应的日期设置成指定的格式的日期
    NSString *addDateStr = [formatter stringFromDate:addDate];
    
    return addDateStr;
}
@end
