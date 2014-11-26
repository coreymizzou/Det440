//
//  contactViewController.swift
//  Mizzou AFROTC
//
//  Created by Corey Hughes on 11/25/14.
//  Copyright (c) 2014 Corey Hughes. All rights reserved.
//

import UIKit
import MessageUI

class contactViewController: UIViewController, MFMailComposeViewControllerDelegate {

    @IBOutlet var Subject: UITextField!
    @IBOutlet var Body: UITextView!
    
    @IBAction func sendEmail(sender: AnyObject) {
        var subjectText = ""
        subjectText += Subject.text
        
        var BodyContent = Body
        
        var toRecipients = ["det440-ks@hotmail.com"]
        
        var mc: MFMailComposeViewController = MFMailComposeViewController()
        mc.mailComposeDelegate = self
            mc.setSubject(subjectText)
        mc.setMessageBody(BodyContent.text, isHTML: false)
        mc.setToRecipients(toRecipients)
        
        self.presentViewController(mc, animated: true, completion: nil)
    }
    
    func mailComposeController(controller: MFMailComposeViewController!, didFinishWithResult result: MFMailComposeResult, error: NSError!) {
        switch result.value {
            case MFMailComposeResultCancelled.value:
                NSLog("Mail Cancelled")
            case MFMailComposeResultFailed.value:
                NSLog("Mail Saved")
            case MFMailComposeResultSent.value:
                NSLog("Mail Sent")
            case MFMailComposeResultFailed.value:
                NSLog("Mail Sent Failure: %@", [error.localizedDescription])
            default:
                break
        }
        
        self.dismissViewControllerAnimated(true, completion: nil)
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
