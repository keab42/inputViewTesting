//
//  ResponderButton.swift
//  inputViewTesting
//
//  Created by Matthew Keable on 11/08/2016.
//  Copyright © 2016 Palringo Ltd. All rights reserved.
//

import Foundation
import UIKit

class ResponderButton: UIButton {
        
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
    override func becomeFirstResponder() -> Bool {
        return super.becomeFirstResponder()
    }
    
}