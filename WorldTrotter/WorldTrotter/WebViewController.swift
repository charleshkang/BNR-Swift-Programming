//
//  WebViewController.swift
//  WorldTrotter
//
//  Created by Charles Kang on 6/26/16.
//  Copyright © 2016 Charles Kang. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad()
    {
        let url = NSURL(string:"https://www.bignerdranch.com")
        let request = NSURLRequest(URL:url!)
        webView.loadRequest(request)
    }
}