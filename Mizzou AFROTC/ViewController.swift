//
//  ViewController.swift
//  Mizzou AFROTC
//
//  Created by Corey Hughes on 11/22/14.
//  Copyright (c) 2014 Corey Hughes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func unwindToViewController (sender: UIStoryboardSegue){
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

