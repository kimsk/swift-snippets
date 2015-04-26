//
//  ViewController.swift
//  Simple Browser
//
//  Created by Karlkim Suwanmongkol on 4/26/15.
//  Copyright (c) 2015 Karlkim Suwanmongkol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField:UITextField!
    @IBOutlet var webView:UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didClickGo(AnyObject) {
        var text = textField.text
        var url = NSURL(string:text)
        var request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
    }
}


