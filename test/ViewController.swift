//
//  ViewController.swift
//  test
//
//  Created by Thinh on 5/20/16.
//  Copyright © 2016 Thinh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        NSDictionary *dictionary = @{ @"UserAgent" : @"Safari iOS 5.1 - iPhone"};
//        [[NSUserDefaults standardUserDefaults] registerDefaults:dictionary];
        let dict = ["UserAgent": "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36" ]
        NSUserDefaults.standardUserDefaults().registerDefaults(dict)
        self.webView.loadRequest(NSURLRequest(URL: NSURL(string: "http://slither.io")!))
        self.webView.scrollView.scrollEnabled = false
    }
    func webViewDidFinishLoad(webView: UIWebView) {
//        let js = "var element = document.getElementById('playh');element.outerHTML = '';delete element;"
        let js1 = "document.getElementById('playh').disabled = false;);"
        let js2 = "document.getElementById('nick').disabled = false;);"
        let js3 = "var element = document.getElementById('smh');element.outerHTML = '';delete element;"
        
        self.webView.stringByEvaluatingJavaScriptFromString(js1)
        self.webView.stringByEvaluatingJavaScriptFromString(js2)
        self.webView.stringByEvaluatingJavaScriptFromString(js3)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

