//
//  MTBaseViewController.swift
//  BeautyItem
//
//  Created by sumshile on 2017/6/1.
//  Copyright © 2017年 sumshile. All rights reserved.
//

import UIKit

class MTBaseViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    func setupUI()
    {
        view.backgroundColor = UIColor.white
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .done, target: nil, action: nil)
        navigationController?.navigationBar.backIndicatorImage = UIImage(named: "btn_backItem")
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "btn_backItem")
        
    }
    func setRenderAlpha(renderAlpha: CGFloat) -> Void {
        
        navigationController?.navigationBar.titleTextAttributes=[NSForegroundColorAttributeName:UIColor.init(white: renderAlpha, alpha: 1)]
        navigationController?.navigationBar.tintColor=UIColor.init(white: renderAlpha, alpha: 1)
    }
}
