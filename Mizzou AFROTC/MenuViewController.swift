//
//  MenuViewController.swift
//  Mizzou AFROTC
//
//  Created by Corey Hughes on 11/24/14.
//  Copyright (c) 2014 Corey Hughes. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBAction func unwindToMenuViewController (sender: UIStoryboardSegue){
        //self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    let transitionManager = MenuTransitionManager()

    @IBOutlet weak var aboutIcon: UIImageView!
    @IBOutlet weak var aboutButton: UIButton!
    
    @IBOutlet weak var rosterIcon: UIImageView!
    @IBOutlet weak var rosterButton: UIButton!
    
    
    @IBOutlet weak var eventsIcon: UIImageView!
    @IBOutlet weak var eventsButton: UIButton!
    
    @IBOutlet weak var ordersIcon: UIImageView!
    @IBOutlet weak var ordersButton: UIButton!
    
    @IBOutlet weak var newsIcon: UIImageView!
    @IBOutlet weak var newsButton: UIButton!
    
    @IBOutlet weak var contactIcon: UIImageView!
    @IBOutlet weak var contactButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.transitioningDelegate = self.transitionManager
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
