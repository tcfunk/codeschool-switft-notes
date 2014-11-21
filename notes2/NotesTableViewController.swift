//
//  NotesTableViewController.swift
//  notes2
//
//  Created by Tyler Funk on 11/21/14.
//  Copyright (c) 2014 Tyler Funk. All rights reserved.
//

import UIKit

class NotesTableViewController: UITableViewController, AddNoteViewControllerDelegate {
    
    var notes:NSArray
    var session:NSURLSession
    
    required init(coder aDecoder: NSCoder) {
        notes = ["One", "Two", "Three", "Four", "Five"]
//        session = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
        
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
//        loadNotes()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("NoteCell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel.text = notes[indexPath.row] as NSString
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "AddNoteSegue") {
            let addNoteViewController = segue.destinationViewController as AddNoteViewController
            addNoteViewController.delegate = self
        }
    }
    
}
