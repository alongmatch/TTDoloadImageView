//
//  TTNewsCell.m
//  科技头条
//
//  Created by sumshile on 2017/5/7.
//  Copyright © 2017年 sumshile. All rights reserved.
//

#import "TTNewsCell.h"
#import "UIView+WP.h"
#import "TTNewsModel.h"
#import "UIImageView+WebCache.h"
@interface TTNewsCell ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *summaryLabel;
@property (weak, nonatomic) IBOutlet UILabel *copNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeTitleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *src_img;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *titleLabelConstraints;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *summaryLabelConstraints;


@end
@implementation TTNewsCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    
}
-(void)setModel:(TTNewsModel *)model
{
    _model=model;
    

    if ([model.src_img isEqualToString: @""])
    {
        _titleLabelConstraints.constant=[UIScreen mainScreen].bounds.size.width;
        
        _summaryLabelConstraints.constant=[UIScreen mainScreen].bounds.size.width;
        _src_img.hidden=YES;
    }
    else
    {
        _titleLabelConstraints.constant=[UIScreen mainScreen].bounds.size.width-_src_img.width-20;
        
        _summaryLabelConstraints.constant=[UIScreen mainScreen].bounds.size.width-_src_img.width-20;

        [_src_img sd_setImageWithURL:[NSURL URLWithString:model.src_img] placeholderImage:[UIImage imageNamed:@"14"]];
        _src_img.hidden=NO;
    }
    _titleLabel.text=model.title;
    
    [self layoutIfNeeded];
    if (_titleLabel.height==18)
    {
        _summaryLabel.hidden=NO;
    }
    else
    {
        _summaryLabel.hidden=YES;
    }
    _summaryLabel.text=model.summary;
    _copNameLabel.text=model.sitename;
    _timeTitleLabel.text=model.addtime;
    
    
    
}
/**
 ///标题
 @property(nonatomic,copy)NSString* title;
 ///副标题
 @property(nonatomic,copy)NSString* summary;
 ///高清晰图片
 @property(nonatomic,copy)NSString* src_img;
 ///媒体名
 @property(nonatomic,copy)NSString* copName;
 ///时间戳
 @property(nonatomic,copy)NSString* timeTitle;
 

 */

@end
