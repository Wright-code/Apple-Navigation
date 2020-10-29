//
//  WebViewController.swift
//  Apple Navigation
//
//  Created by Harry Wright on 29/10/2020.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {
    
    var url = ""
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(url)
        let urlComplete = URL(string: url)
        webView.load(URLRequest(url: urlComplete!))
        webView.allowsBackForwardNavigationGestures = true
    }
    
}
