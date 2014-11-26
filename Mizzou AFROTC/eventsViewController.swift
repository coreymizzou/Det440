//
//  eventsViewController.swift
//  Mizzou AFROTC
//
//  Created by Corey Hughes on 11/25/14.
//  Copyright (c) 2014 Corey Hughes. All rights reserved.
//

import UIKit

class eventsViewController: UITableViewController {
    
    var events = [Event]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.events = [Event(name: "LLab 14 Dec 2" ), Event(name: "PT Dec 4-5"), Event(name: "NO LLab Dec 9"), Event(name: "NO LLab Dec 16"), Event(name: "LLab 15 Jan 20")]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.events.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        var event : Event
        
        event = events[indexPath.row]
        
        cell.textLabel?.text = event.name
        
        return cell
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
