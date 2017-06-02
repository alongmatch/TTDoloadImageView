//
//  MTNavgationController.swift
//  BeautyItem
//
//  Created by sumshile on 2017/6/1.
//  Copyright © 2017年 sumshile. All rights reserved.
//

import UIKit

class MTNavgationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let barDelegate = UINavigationBar.appearance()
        barDelegate .setBackgroundImage(UIImage(), for: .default)
        barDelegate.shadowImage = UIImage()
        
    }

    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if self.viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super .pushViewController(viewController, animated: true)
    }

}
