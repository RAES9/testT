//
//  JokeViewModel.swift
//  TestTT
//
//  Created by RAES on 23/12/21.
//

import Foundation

class JokeViewModel: ObservableObject {
    @Published var response = [Joke]()
    
    init() {
        fetch()
    }
    
    func fetch() {
        let endpoint = "random"
        let api = API(endpoint: endpoint, parameters: [:])
        api.get { (string: String?, error, jsonString)  in
            let dict = string?.convertToDictionary()
            let jsonData = try? JSONSerialization.data(withJSONObject: dict as Any)
            let instance = try? JSONDecoder().decode(Joke.self, from: jsonData!)
            if let response: Joke = instance {
                DispatchQueue.main.async {
                    if !self.response.contains(response) {
                        self.response.append(response)
                    }
                    if self.response.count < 15 {
                        self.fetch()
                    }
                }
            }
        }
    }
}
