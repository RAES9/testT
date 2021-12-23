//
//  String+Extension.swift
//  TestTT
//
//  Created by RAES on 23/12/21.
//

import Foundation

extension String {
      
    func convertToDictionary() -> [String: Any]? {
        var dic: [String: Any]?
        if let data = data(using: String.Encoding.utf8) {
            do {
                dic = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
            } catch let error as NSError {
                print(error)
            }
        }
        return dic
    }
}
