//
//  MTTabBarController.swift
//  BeautyItem
//
//  Created by sumshile on 2017/6/1.
//  Copyright © 2017年 sumshile. All rights reserved.
//

import UIKit

class MTTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let mutable = NSMutableArray()

        mutable.add(addChildController(clsName: MTHomeViewController(), title: "首页", normalImage: "tabBar_home"))
        
        mutable.add(addChildController(clsName: MTOrderViewController(), title: "订单", normalImage: "tabBar_order"))
        
        mutable.add(addChildController(clsName: MTMineViewController(), title: "我的", normalImage: "tabBar_mine"))
        
        viewControllers = mutable as? [UIViewController]
        
    }
        //  MARK: 实例化子控制器
    func addChildController(clsName: UIViewController , title: String , normalImage: String) -> MTNavgationController {
    
        
        clsName.title=title
        clsName.tabBarItem.image = UIImage(named: normalImage)
        let strName = normalImage + "_sel"
        clsName.tabBarItem.selectedImage = UIImage(named: strName)
        clsName.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName : kRGBColorFromHex(rgbValue: 0x643205)], for: .selected)
        let nav = MTNavgationController(rootViewController: clsName)
        return nav
        
    }
    func kRGBColorFromHex(rgbValue: Int) -> (UIColor) {
        return UIColor(red: ((CGFloat)((rgbValue & 0xFF0000) >> 16)) / 255.0,green: ((CGFloat)((rgbValue & 0xFF00) >> 8)) / 255.0,blue: ((CGFloat)(rgbValue & 0xFF)) / 255.0,alpha: 1.0)
    }


}
