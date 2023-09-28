//
//  WebViewController.swift
//  SampleUI
//
//  Created by masaya.shimizu on 2023/09/28.
//

import Foundation

import WebKit

class WebViewController: UIViewController {

    var webView: WKWebView!

    override func loadView() {

        // 2 WKWebViewConfiguration の生成
        let webConfiguration = WKWebViewConfiguration()
        // 3 WKWebView に Configuration を引き渡し initialize
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        
        // 6 view に webView を割り当て
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // 7 URLオブジェクトを生成
        let myURL = URL(string:"https://www.apple.com")
        // 8 URLRequestオブジェクトを生成
        let myRequest = URLRequest(url: myURL!)

        // 9 URLを WebView にロード
        webView.load(myRequest)
    }
}

// MARK: - 10 WKWebView ui delegate
extension ViewController: WKUIDelegate {
    // delegate
}

// MARK: - 11 WKWebView WKNavigation delegate
extension ViewController: WKNavigationDelegate {
    // delegate
}

