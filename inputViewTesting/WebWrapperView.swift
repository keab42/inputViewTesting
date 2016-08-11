//
//  WebWrapperView.swift
//  inputViewTesting
//
//  Created by Matthew Keable on 11/08/2016.
//  Copyright © 2016 Palringo Ltd. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class WebWrapperView : UIView
{
    @IBOutlet weak var loadButton: UIButton!
    @IBOutlet weak var wrapperView: UIView!
    var myWebView: WKWebView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let config = WKWebViewConfiguration()
        myWebView = WKWebView(frame: CGRectMake(0, 0, 0, 0), configuration: config)
        
        wrapperView.addSubview(myWebView)
        myWebView.translatesAutoresizingMaskIntoConstraints = false
        
        let views = ["webView" : myWebView, "wrapperView" : wrapperView]
        var allConstraints = [NSLayoutConstraint]()
        
        let verticalConstraint = NSLayoutConstraint.constraintsWithVisualFormat("V:|-[webView]-|", options: [], metrics: nil, views: views)
        allConstraints += verticalConstraint
        
        let horizontalConstraint = NSLayoutConstraint.constraintsWithVisualFormat("H:|-[webView]-|", options: [], metrics: nil, views: views)
        allConstraints += horizontalConstraint
        
        NSLayoutConstraint.activateConstraints(allConstraints)
        
    }
    
    @IBAction func loadWebView(sender: AnyObject) {
        let request = NSURLRequest(URL: NSURL(string: "http://www.bbc.co.uk")!)
        myWebView.loadRequest(request)
    }
    
}