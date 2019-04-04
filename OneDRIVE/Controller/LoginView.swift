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
    var oneDriveApi = OneDriveApi()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sign In"
        
        oneDriveApi.getOneDriveApiUrlSession()

        let url = URL(string: AUTH_URL)
        let request = URLRequest(url: url!)
        myWebView.load(request)
        
    }
    }
    
    

