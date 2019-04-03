//
//  ViewController.swift
//  OneDRIVE
//
//  Created by anna.sibirtseva on 03/04/2019.
//  Copyright © 2019 anna.sibirtseva. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt32()
        Scanner(string: hex).scanHexInt32(&int)
        let a, r, g, b: UInt32
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
}

class ViewController: UIViewController {
    @IBOutlet weak var signINButton: UIButton!
    
    override func viewDidLoad() {
        let oneDriveBlue = UIColor(hexString: "#3E9EF8")
        signINButton.layer.borderWidth = 2
        signINButton.layer.borderColor = oneDriveBlue.cgColor
        signINButton.layer.cornerRadius = 12
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    

}

