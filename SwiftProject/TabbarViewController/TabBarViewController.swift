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
        let item1 : UITabBarItem = UITabBarItem (title: "首页", image: UIImage(named: "home"), selectedImage: UIImage(named: "homeco")?.withRenderingMode(.alwaysOriginal))
        v1.tabBarItem = item1
        v1.tabBarItem!.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.lightGray], for: UIControl.State())
        //导航栏
        let nav = UINavigationController(rootViewController: v1)
        
        //第二个tabbar
        let v2 = TwoTabbarViewController()
        let item2 = UITabBarItem (title: "2", image: UIImage(named: "home"), selectedImage: UIImage(named: "homeco")?.withRenderingMode(.alwaysOriginal))
        v2.tabBarItem = item2
        let nav2 = UINavigationController(rootViewController: v2)
        
        let tabArray = [nav,nav2]
        self.viewControllers = tabArray
    }

    
}
