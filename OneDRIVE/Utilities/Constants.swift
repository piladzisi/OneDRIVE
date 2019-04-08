//
//  Constants.swift
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

let ONE_DRIVE_BLUE = UIColor(hexString: "#3E9EF8")


//let URL_BASE = "https://swapi.co/api/"
//let AUTH_URL = URL_BASE+"people/2"
let URL_BASE = "https://login.microsoftonline.com/common/oauth2/v2.0/authorize"
let AUTH_URL = URL_BASE+"?client_id="+kClientID+"&scope="+scope+"&response_type="+response+"&redirect_uri="+redirect
let kClientID = "9bf1a7d9-a92a-4d02-ab58-cc154f5931b4"
let scope = "files.read"
let response = "code"
let redirect = "https://login.live.com/oauth20_desktop.srf"
//good morning

