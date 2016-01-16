//
//  DCSViewController.swift
//  MoneyTrack
//
//  Created by Srikant kumar jena on 16/01/16.
//  Copyright © 2016 Srikant kumar jena. All rights reserved.
//

import UIKit

class DCSViewController: ParentViewController {
    
    override init() {
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        fatalError("Erro in DCSViewController")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.orangeColor()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
