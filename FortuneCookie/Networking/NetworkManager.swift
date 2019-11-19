//
//  NetworkManager.swift
//  FortuneCookie
//
//  Created by MattHew Phraxayavong on 10/8/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import Foundation

class NetworkManager: NSObject {
    
    var fortune: FortuneScreenView!
    
    func getFortune(completion: @escaping (Fortunes?)->()) {
         let url = URL(string: "https://fortunecookieapi.herokuapp.com/v1/fortunes?")!
         var request = URLRequest(url: url)
//        let data = [];

        

         let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print(error?.localizedDescription)
                return
            }
            
            if let httpResponse = response as? HTTPURLResponse {
                print(httpResponse.statusCode)
            }
            
//            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: []) as? [[String: Any]]
            
            do {
                //let json = try JSONSerialization.jsonObject(with: data!, options: []) as! [String: Any]
                //print(">>>>>", json, #line, "<<<<<<<<<")
                DispatchQueue.main.async {
                    let object = try! JSONDecoder().decode(Fortunes.self, from: data)
                    print("🤢", object)
                    completion(object)
                }
//            if let responseJSON = responseJSON {
//                print(responseJSON as Any)
//
//            }
//                data
//                let  dictionary = responseJSON
//                dictionary!.index(forKey: "message")
//                print("the dict is: \(dictionary)")
//                self.fortune.fortuneResult.text = "the result is \(responseJSON)"
                
            }
            
            
         }

         task.resume()
     }

}
