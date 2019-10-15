//
//  ViewController.swift
//  SwiftProject
//
//  Created by 朱标 on 2019/8/27.
//  Copyright © 2019 zzz. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
   
    
 
    var mainTableView: UITableView?
    var listData: NSArray?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        self.title = "首页";
        listData = ["UITableView","Block的使用"]
        createTableView()
    }
    func createTableView() -> Void {
        mainTableView = UITableView(frame: CGRect(x: 0, y: 0, width: kScreenWidth, height: self.view.frame.height),style:.plain)
//        mainTableView?.backgroundColor = UIColor.white
        mainTableView?.tableFooterView = UIView()
        mainTableView?.delegate = self
        mainTableView?.dataSource = self
        view.addSubview(mainTableView!)
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listData?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = listData?[indexPath.row] as? String
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let listDemo = ListDemoViewController()
            listDemo.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(listDemo, animated: true)
        }
        if indexPath.row == 1 {
            let blockDemo = BlockDemoViewController()
            blockDemo.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(blockDemo, animated: true)
           //Block的实现
            blockDemo.changeTitleBlock = {(title:String)->Void in
                self.title = title
            }
            
        }
    }
    
    

}

