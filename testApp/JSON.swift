//
//  JSON.swift
//  testApp
//
//  Created by Клоун on 29.01.2022.
//

import Foundation

struct Magic: Decodable {
    let answer: String
    let question: String
    let type: String
    
struct MyStruct: Decodable {
    let magic: Magic
    }
}
