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
                self.ParseOneDriveManual(json: json)
            } catch {
                debugPrint(error.localizedDescription)
                return
            }
        }
        task.resume()
    }
    private func ParseOneDriveManual(json: [String: Any]) -> Person {
        let name = json["name"] as? String ?? ""
        let height = json["height"] as? String ?? ""
        let gender = json["gender"] as? String ?? ""
        let filmUrls = json["films"] as? [String] ?? [String]()
        let vehicleUrls = json["vehicles"] as? [String] ?? [String]()
        
        let person = Person(name: name, height: height, gender: gender, filmUrls: filmUrls, vehicleUrls: vehicleUrls)
        return person
    }
}

