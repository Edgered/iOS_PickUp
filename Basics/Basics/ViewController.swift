//
//  ViewController.swift
//  Basics
//
//  Created by John Huang on 2017-06-08.
//  Copyright © 2017 John Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var Lable2: UILabel!
    @IBOutlet weak var myTextInput: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // myTextInput.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        // @IBOutlet var myLabel:UILabel! // ! or ? means Not going to be Nil; IB = interface builder
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        myTextInput.resignFirstResponder()
        return false
    }
    @IBAction func myTouchDown(_ sender: Any) {
        myLabel.text = "you touched it down!"
    }
    
    @IBAction func didTabButton(_ sender: Any) {
        // myLabel.text = "Changed with code"
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    @IBAction func tapSayHi(_ sender: Any) {
        var se = myTextInput.text!
        Lable2.text = "Hi \(se)!"
        myTextInput.resignFirstResponder()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

