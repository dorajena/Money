//
//  ParentViewController.swift
//  MoneyTrack
//
//  Created by Srikant kumar jena on 16/01/16.
//  Copyright © 2016 Srikant kumar jena. All rights reserved.
//

import UIKit

class ParentViewController: UIViewController , UITableViewDataSource,UITableViewDelegate{
    
    var tableViewList:UITableView?
    var itemList:Array<Item>?
    
    init() {
        super.init(nibName:nil, bundle:nil)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("Some error in Creation of Parent VC")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.yellowColor()
        
        self.loadData()
        self.setUptableView()

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadData(){
        
        itemList = Array()
        
        let item = Item()
        item.price = "100.00"
        item.itemName = "Home"
        itemList?.append(item)
        
        let item1 = Item()
        item1.price = "100.00"
        item1.itemName = "Home"
        itemList?.append(item1)


    }
    
    func setUptableView(){
        
        let rect = CGRectMake(0, 0, CGRectGetWidth(self.view.frame)/2, CGRectGetHeight(self.view.frame))
        tableViewList = UITableView(frame:rect, style: .Plain)
        tableViewList?.delegate = self
        tableViewList?.dataSource = self
        tableViewList?.layer.borderColor = UIColor.greenColor().CGColor
        tableViewList?.layer.borderWidth = 2
        self.view.addSubview(tableViewList!)
        
//        let userDetailsNIB = UINib(nibName: "TableViewItemCell", bundle: nil)
//        tableViewList!.registerNib(userDetailsNIB, forCellReuseIdentifier: "reuseIdentifierCell")
        
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        return 70
    }
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var rowCount = 0
        
        if let listCount = self.itemList{
            
            rowCount = listCount.count
        }
        
        return rowCount
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        
        let cellIdentifier:String = "reuseIdentifierCell"
        var cell:TableViewItemCell? = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as? TableViewItemCell
        if (cell == nil)
        {
            var nib:Array = NSBundle.mainBundle().loadNibNamed("TableViewItemCell", owner: self, options: nil)
            cell = nib[0] as? TableViewItemCell
        }
        return cell!
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
