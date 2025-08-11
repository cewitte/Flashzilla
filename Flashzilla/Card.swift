//
//  Card.swift
//  Flashzilla
//
//  Created by Carlos Eduardo Witte on 23/07/25.
//

import Foundation

struct Card: Codable {
    var prompt: String
    var answer: String
    
    static let example = Card(prompt: "Who played the 13th Doctor in Doctor Who?", answer: "Jodie Whittaker")
}
