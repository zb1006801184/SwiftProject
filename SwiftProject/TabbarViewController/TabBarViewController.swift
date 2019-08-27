//
//  TabBarViewController.swift
//  SwiftProject
//
//  Created by 朱标 on 2019/8/27.
//  Copyright © 2019 zzz. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        createViewController()
    }
    func createViewController() {
        let v1  = ViewController()
        let item1 : UITabBarItem = UITabBarItem (title: "第一页面", image: UIImage(named: "home"), selectedImage: UIImage(named: "homeco")?.withRenderingMode(.alwaysOriginal))
        v1.tabBarItem = item1
        v1.tabBarItem!.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.lightGray], for: UIControl.State())
        //导航栏
        let nav = UINavigationController(rootViewController: v1)
        
        let tabArray = [nav]
        self.viewControllers = tabArray
    }

    
}
