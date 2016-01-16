//
//  BaseViewController.swift
//  MoneyTrack
//
//  Created by Srikant kumar jena on 16/01/16.
//  Copyright © 2016 Srikant kumar jena. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        /*
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        if let evController = storyboard.instantiateViewControllerWithIdentifier("parentVC") as? ExpendViewController {
            
            addChildViewController(evController)
            evController.view!.frame = CGRectMake(0,0,CGRectGetWidth(self.view.frame),CGRectGetHeight(self.view.frame))
            self.view.addSubview(evController.view)
            evController.didMoveToParentViewController(self)
        }
        
        if let dcsController = storyboard.instantiateViewControllerWithIdentifier("parentVC") as? DCSViewController {
            
            addChildViewController(dcsController)
            dcsController.view!.frame = CGRectMake(0,0,CGRectGetWidth(self.view.frame),CGRectGetHeight(self.view.frame))
            self.view.addSubview(dcsController.view)
            dcsController.didMoveToParentViewController(self)
        }*/

        let navHeight = self.navigationController?.navigationBar.frame.size.height

        let dcsController = ParentViewController()
        addChildViewController(dcsController)
        dcsController.view!.frame = CGRectMake(0,navHeight!+20,CGRectGetWidth(self.view.frame)/2,CGRectGetHeight(self.view.frame))
        self.view.addSubview(dcsController.view)
        dcsController.didMoveToParentViewController(self)


//       let eVc = ExpendViewController()
//        eVc.view!.frame = CGRectMake(0,0,CGRectGetWidth(self.view.frame)/2,CGRectGetHeight(self.view.frame))
//        self.view.addSubview(eVc.view)
//        eVc.didMoveToParentViewController(self)
        
        
//        let dcsVc = DCSViewController()
//        dcsVc.view!.frame = CGRectMake(CGRectGetWidth(self.view.frame)/2,navHeight!+20,CGRectGetWidth(self.view.frame)/2,CGRectGetHeight(self.view.frame))
//        self.view.addSubview(dcsVc.view)
//        dcsVc.didMoveToParentViewController(self)

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
