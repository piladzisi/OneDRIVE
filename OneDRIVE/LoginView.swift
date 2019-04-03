//
//  BViewController.swift
//  OneDRIVE
//
//  Created by anna.sibirtseva on 03/04/2019.
//  Copyright © 2019 anna.sibirtseva. All rights reserved.
//

import UIKit
import WebKit

class LoginView: UIViewController {
    
    @IBOutlet weak var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sign In"
        
        let url = URL(string: "https://onedrive.live.com/about/signin/")
        let request = URLRequest(url: url!)
        myWebView.load(request)
    }
    }
    
    

