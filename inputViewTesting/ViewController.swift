//
//  ViewController.swift
//  inputViewTesting
//
//  Created by Matthew Keable on 11/08/2016.
//  Copyright © 2016 Palringo Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override var inputAccessoryView: UIView? {
        get {
            let view = NSBundle.mainBundle().loadNibNamed("InputView", owner: self, options: nil)[0] as! UIView
            view.frame = CGRectMake(0, 0, 320, 50)
            return view
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.becomeFirstResponder()
    }
    
    override func canBecomeFirstResponder() -> Bool {
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func restoreButtonPressed(sender: AnyObject) {
        self.becomeFirstResponder()
    }
}

