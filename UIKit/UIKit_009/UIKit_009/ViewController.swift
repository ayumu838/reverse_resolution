//
//  ViewController.swift
//  UIKit_009
//
//  Created by 望月歩 on 2017/04/22.
//  Copyright © 2017年 望月歩. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate {
    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaultUrl = URL(string: "http://google.com")!
        let request = URLRequest(url: defaultUrl)
        webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        print("webview did start load")
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print("webview did finish load")
    }
    
    


}

