//
//  ListDemoViewController.swift
//  SwiftProject
//
//  Created by 朱标 on 2019/8/27.
//  Copyright © 2019 zzz. All rights reserved.
//

import UIKit

class ListDemoViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    var mainTableView:UITableView?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        createTableView()
    }
    
    func createTableView() -> Void {
        mainTableView = UITableView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height), style: .plain)
        mainTableView?.delegate = self;
        mainTableView?.dataSource = self;
        view.addSubview(mainTableView!)
        //头 尾
        mainTableView?.tableFooterView = UIView()
        mainTableView?.tableHeaderView = UIView()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "第\(indexPath.row+1)个cell"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
}
