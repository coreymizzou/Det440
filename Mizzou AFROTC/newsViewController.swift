//
//  newsViewController.swift
//  Mizzou AFROTC
//
//  Created by Corey Hughes on 11/25/14.
//  Copyright (c) 2014 Corey Hughes. All rights reserved.
//

import UIKit

class newsViewController: UIViewController {

    @IBOutlet var webview: UIWebView!
    
    var url = "http://military.com/daily-news/"
    
    func loadURL() {
        let requestURL = NSURL(string: url)
        let request = NSURLRequest(URL: requestURL)
        webview.loadRequest(request)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadURL()
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
