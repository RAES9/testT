//
//  Joke.swift
//  TestTT
//
//  Created by RAES on 23/12/21.
//

import Foundation

struct Joke : Decodable, Identifiable, Hashable {
    var icon_url : String?
    var id : String?
    var url : String?
    var value : String?
}
