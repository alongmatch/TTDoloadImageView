//
//  MTHomeViewController.swift
//  BeautyItem
//
//  Created by sumshile on 2017/6/1.
//  Copyright © 2017年 sumshile. All rights reserved.
//

import UIKit

class MTHomeViewController: MTBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        navigationController?.pushViewController(MTShopViewController(), animated: true)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
