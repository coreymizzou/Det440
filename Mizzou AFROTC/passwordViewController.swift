//
//  passwordViewController.swift
//  Mizzou AFROTC
//
//  Created by Corey Hughes on 11/25/14.
//  Copyright (c) 2014 Corey Hughes. All rights reserved.
//

import UIKit

class passwordViewController: UIViewController {
    
    @IBAction func unwindToPasswordViewController (sender: UIStoryboardSegue){
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBAction func submit(sender: UIButton) {
        var password:NSString = txtPassword.text
        
        if (password.isEqualToString("1522*") ) {
            self.performSegueWithIdentifier("passwordSegue", sender: self)
        }
        else {
            var alertView:UIAlertView = UIAlertView()
            alertView.title = "Incorrect Password"
            alertView.message = "Please enter Password"
            alertView.delegate = self
            alertView.addButtonWithTitle("OK")
            alertView.show()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
