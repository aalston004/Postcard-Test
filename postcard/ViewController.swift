//
//  ViewController.swift
//  postcard
//
//  Created by Aristio Alston on 9/26/14.
//  Copyright (c) 2014 ta3t. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterTextTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func sendEmailButtonPressed(sender: UIButton) {
        
        nameLabel.hidden = false;
        nameLabel.text = enterNameTextField.text;
        nameLabel.textColor = UIColor.blueColor();
        
        enterNameTextField.text = "";
        
        messageLabel.hidden = false; //unhides label
        messageLabel.text = enterTextTextField.text; //makes label text same as typed text field
        messageLabel.textColor = UIColor.redColor();
        
        enterTextTextField.text = ""; //clears field after button is pressed
        enterTextTextField.resignFirstResponder(); //makes keyboard go away
        
        mailButton.setTitle("Mail Just Sent", forState:UIControlState.Normal); //passes parameters, changes button title after being clicked (normal = default)
        
    }

}

