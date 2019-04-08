//
//  BViewController.swift
//  OneDRIVE
//
//  Created by anna.sibirtseva on 03/04/2019.
//  Copyright © 2019 anna.sibirtseva. All rights reserved.
//

import UIKit
import WebKit

class LoginView: UIViewController, WKUIDelegate, WKNavigationDelegate{
    
    @IBOutlet weak var myWebView: WKWebView!
    //var oneDriveApi = OneDriveApi()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sign In"
        
        //OneDriveApi.getOneDriveApiUrlSession()

        let url = URL(string: AUTH_URL)
        let request = URLRequest(url: url!)
        myWebView.navigationDelegate = self as WKNavigationDelegate
        myWebView.load(request)
    }
    
    func webView (_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        guard let absString = navigationAction.request.url?.absoluteString
        else { return }
        if absString.range(of:"?code=") != nil {
           let fullNameArr : [String] = absString.components(separatedBy: "=")
            code = fullNameArr[1]
            print(code)
       }
        decisionHandler(WKNavigationActionPolicy.allow)
    }
//    private func webView(_ webView, didReceiveServerRedirectForProvisionalNavigation navigation: WKNavigation!){
//        if let receivedCode = code {
//            getToken(receivedCode: receivedCode)
//        }
//    }
}
    
    

