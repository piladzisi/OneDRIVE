//
//  ViewController.swift
//  OneDRIVE
//
//  Created by anna.sibirtseva on 03/04/2019.
//  Copyright © 2019 anna.sibirtseva. All rights reserved.
//

import UIKit



class AppLoadView: UIViewController {
    @IBOutlet weak var signINButton: UIButton!
    
    override func viewDidLoad() {
        
        signINButton.layer.borderWidth = 2
        signINButton.layer.borderColor = ONE_DRIVE_BLUE.cgColor
        signINButton.layer.cornerRadius = 12
        
        super.viewDidLoad()
        
        
    }
    

}

