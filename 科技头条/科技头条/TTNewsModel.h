//
//  TTNewsModel.h
//  科技头条
//
//  Created by sumshile on 2017/5/7.
//  Copyright © 2017年 sumshile. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TTNewsModel : NSObject
///标题
@property(nonatomic,copy)NSString* title;
///副标题
@property(nonatomic,copy)NSString* summary;
///高清晰图片
@property(nonatomic,copy)NSString* src_img;
///媒体名
@property(nonatomic,copy)NSString* sitename;
///时间戳
@property (nonatomic,copy) NSString *addtime;





@end
/**
 JSON
 0
 id : "597428"
 type_id : "4"
 title : "中国品牌日，苏宁要如何用智慧物流提升用户体验？"
 summary : "5月10日是国务院确立的“中国品牌日”，而就在5月6号，尽管是个周六，张近东依旧把苏宁集团的核心高管聚..."
 img : "http://news.coolban.com/Upload/thumb/170507/80-60-1P13B916-0.jpg"
 src_img : "http://h.hiphotos.baidu.com/news/w%3D638/sign=a7d3b1e9c9fdfc03e578e0bbec3f87a9/43a7d933c895d143c264a33479f082025aaf0792.jpg"
 sitename : "百家自媒体"
 addtime : "1494152004"
 use_thumb : false
 */
