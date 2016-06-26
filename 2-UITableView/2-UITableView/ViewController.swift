//
//  ViewController.swift
//  2-UITableView
//
//  Created by keso on 16/6/5.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

import UIKit

<<<<<<< HEAD
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

=======
let CellIdentifier = "UITableViewCellIdentifier"

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var sortButton: UIButton!
    
    var tableView :UITableView?
    
    var data=[String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.setup()
    }
    
>>>>>>> 1343a3645ab0afd0354e8c159d78dbe08d3eb457
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
<<<<<<< HEAD


=======
    //MARK: UITableViewDataSource
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier)
        tableViewCell?.textLabel?.text="\(self.data[indexPath.row])"
        return tableViewCell!
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    //MARK: UITableViewDelegate
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated:true)
    }
    
    func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        return UITableViewCellEditingStyle.None
    }
    
   
    func tableView(tableView: UITableView, shouldIndentWhileEditingRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }
    
    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        let content=self.data[sourceIndexPath.row]
        self.data.removeAtIndex(sourceIndexPath.row)
        self.data.insert(content, atIndex: destinationIndexPath.row)
    }
    
    //MARK:Actions
    
    
    @IBAction func tableViewSortAction(sender: UIButton) {
        print("Sort--FlyElephant")
        let isEditing:Bool = !(self.tableView?.editing)!
        self.tableView?.editing=isEditing
    }
    //MARK: Setup
    
    private func setup(){
        self.view.backgroundColor = UIColor.whiteColor()
        let tableFrame=CGRectMake(0, 120, UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height-120)
        self.tableView = UITableView.init(frame: tableFrame, style: UITableViewStyle.Plain)
        self.tableView?.backgroundColor=UIColor.whiteColor()
        self.tableView?.delegate=self
        self.tableView?.dataSource=self
        self.tableView?.registerClass(UITableViewCell.self, forCellReuseIdentifier: CellIdentifier)
        self.view.addSubview(self.tableView!)
        
        self.data=["中山郎","FlyElephant","QQ群:228407086","keso","博客","iOS","Swift"]
    }
    
>>>>>>> 1343a3645ab0afd0354e8c159d78dbe08d3eb457
}

