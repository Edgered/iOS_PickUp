//
//  ViewController.swift
//  First Project
//
//  Created by John Huang on 2017-06-08.
//  Copyright © 2017 John Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myTextBox: UITextField!
    @IBOutlet weak var myTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        myTextBox.resignFirstResponder()
        return false
    }

    @IBAction func myAddInput(_ sender: Any) {
        var td = myTextBox.text!
        myTextField.insertText("\(td)\n")
        myTextBox.becomeFirstResponder()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

