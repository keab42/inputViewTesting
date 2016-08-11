//
//  ViewController.swift
//  inputViewTesting
//
//  Created by Matthew Keable on 11/08/2016.
//  Copyright © 2016 Palringo Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var responderButton: ResponderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTapped(sender: AnyObject) {
        if responderButton.isFirstResponder() {
            responderButton.resignFirstResponder()
        } else {
            responderButton.becomeFirstResponder()
        }
        
    }

}

