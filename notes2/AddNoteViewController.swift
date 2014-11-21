//
//  AddNoteViewController.swift
//  notes2
//
//  Created by Tyler Funk on 11/21/14.
//  Copyright (c) 2014 Tyler Funk. All rights reserved.
//

import UIKit

protocol AddNoteViewControllerDelegate {
    func saveNote(controller: AddNoteViewController, noteText: String)
    func dismissAddViewController(controller: AddNoteViewController)
}

class AddNoteViewController : UIViewController, UITextFieldDelegate {
    
    var delegate : AddNoteViewControllerDelegate?
    @IBOutlet var noteField : UITextField?
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
