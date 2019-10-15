//
//  SnapKitDemoViewController.swift
//  SwiftProject
//
//  Created by 朱标 on 2019/10/15.
//  Copyright © 2019 zzz. All rights reserved.
//

import UIKit

class SnapKitDemoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white;
        configViews()
    }
    
    func configViews() -> Void {
        let centerView = UIView();
        centerView.backgroundColor = .red
        self.view.addSubview(centerView)
        centerView.snp.makeConstraints { (make) in
            make.width.height.equalTo(50)
            //距左
            make.left.equalTo(view.snp.left)
            //距上89
            make.top.equalTo(view.snp.top).offset(89)
            //
        }
        
    }

}
