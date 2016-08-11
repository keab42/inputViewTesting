//
//  ResponderButton.swift
//  inputViewTesting
//
//  Created by Matthew Keable on 11/08/2016.
//  Copyright © 2016 Palringo Ltd. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class ResponderButton: UIButton {
    
    override var inputView: UIView? {
        get {
            let view = NSBundle.mainBundle().loadNibNamed("WebWrapperView", owner: self, options: nil)[0] as! UIView
            view.frame = CGRectMake(0, 0, 320, 300)            
            return view
        }
    }
    
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
    override func becomeFirstResponder() -> Bool {
        return super.becomeFirstResponder()
    }
    
    
}