//
//  CustomInputBar.swift
//  inputViewTesting
//
//  Created by Matthew Keable on 11/08/2016.
//  Copyright © 2016 Palringo Ltd. All rights reserved.
//

import UIKit

class CustomInputBar: UIView {

    
    @IBOutlet weak var responderButton: WebResponderButton!
    
    @IBAction func buttonTapped(sender: AnyObject) {
        if responderButton.isFirstResponder() {
            responderButton.resignFirstResponder()
        } else {
            responderButton.becomeFirstResponder()
        }
    }

}
