//
//  OneDriveAPI.swift
//  OneDRIVE
//
//  Created by anna.sibirtseva on 04/04/2019.
//  Copyright © 2019 anna.sibirtseva. All rights reserved.
//

import Foundation


class OneDriveApi {
    
    func getOneDriveApiUrlSession() {
        
        guard let url = URL(string: AUTH_URL) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard error == nil else{
                debugPrint(error.debugDescription)
                return
            }
            guard let data = data else { return }
            
            do {
                let jsonAny = try JSONSerialization.jsonObject(with: data, options: [])
                guard let json = jsonAny as? [String: Any] else { return }
                print(json)
            } catch {
                debugPrint(error.localizedDescription)
                return
            }
            
        }
        
        task.resume()
    }

}

