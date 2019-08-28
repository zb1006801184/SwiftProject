//
//  BlockDemoViewController.swift
//  SwiftProject
//
//  Created by 朱标 on 2019/8/27.
//  Copyright © 2019 zzz. All rights reserved.
//

import UIKit

class BlockDemoViewController: UIViewController {

    var changeTitleBlock:((String)->())?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


   

    @IBAction func changeClick(_ sender: Any) {
        changeTitleBlock?("block更改")
    }
    
}
