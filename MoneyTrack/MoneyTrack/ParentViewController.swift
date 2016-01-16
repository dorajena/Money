//
//  ParentViewController.swift
//  MoneyTrack
//
//  Created by Srikant kumar jena on 16/01/16.
//  Copyright © 2016 Srikant kumar jena. All rights reserved.
//

import UIKit

class ParentViewController: UIViewController {
    
    init() {
        super.init(nibName:nil, bundle:nil)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("Some error in Creation of Parent VC")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.yellowColor()
        
        
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
