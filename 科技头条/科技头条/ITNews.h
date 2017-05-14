//
//  ITNews.h
//  模拟科技头条
//
//  Created by zhangjie on 16/11/26.
//  Copyright © 2016年 itheima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ITNews : NSObject

/// 新闻副标题
@property (nonatomic,copy) NSString *summary;
/// 新闻缩略图
//@property (nonatomic,copy) NSString *img;
/// 新闻发发布时间 (时间戳) (1970-01-01 ~ 现在的秒数)
@property (nonatomic,copy) NSString *addtime;
/// 新闻编号
@property (nonatomic,copy) NSString *id;
/// 新闻类型编号
//@property (nonatomic,copy) NSString *type_id;
/// 新闻主标题
@property (nonatomic,copy) NSString *title;
/// 新闻来源
@property (nonatomic,copy) NSString *sitename;
/// 新闻原始图标
@property (nonatomic,copy) NSString *src_img;
/// 新闻图标是否使用缩略图
@property (nonatomic,assign) BOOL use_thumb;

/**
 字典转模型的主方法

 @param dict 字典数组遍历出来的字典
 @return 模型对象
 */
//+ (instancetype)newsWithDict:(NSDictionary *)dict;

@end


/*
 {
	summary = 美国&ldquo;黑五&rdquo;在线消费创新纪录11月26日消息，据外媒报道，黑色星期五，对于美国零售商而言，通...;
	img = http://news.coolban.com/Upload/thumb/161126/80-60-162F25029-0.jpg;
	addtime = 1480148864;
	id = 520244;
	type_id = 5;
	title = 美国“黑五”网络消费首超30亿美元 创新的纪录;
	sitename = techweb;
	use_thumb = 0;
	src_img = http://upload.techweb.com.cn/2016/1126/1480128776649.jpg;
 }
 */






