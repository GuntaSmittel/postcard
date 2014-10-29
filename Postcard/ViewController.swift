//
//  ViewController.swift
//  Postcard
//
//  Created by Garry Smith on 10/11/14.
//  Copyright (c) 2014 Scorech.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Declare Variables for UI Elements
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //code will evaluate when we press the button
        
        
        //unhide and show text in the labels
        messageLabel.hidden=false
        nameLabel.hidden=false
        
        //transfer the text fields values to the labels
        messageLabel.text=enterMessageTextField.text
        nameLabel.text=enterNameTextField.text
        
        
        //clear the textfields
        enterMessageTextField.text=""
        enterNameTextField.text=""
        
        //uses the class function UIColor automatically instances object
        messageLabel.textColor=UIColor.redColor()
        nameLabel.textColor=UIColor.blueColor()
        
        //Tells IOS that the TextField is no longer waiting for a response which disables the keyboard
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        
        // Sent the title and leave the focus unselected
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
}
}