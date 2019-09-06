//
//  Pokemon.swift
//  Pokemon-Test
//
//  Created by Hayden Hastings on 9/6/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

import Foundation

struct Pokemon: Equatable, Codable {
    
    let name: String
    let id: Int
    let sprites: Sprites
    
    let abilities: [Ability]
}

struct Ability: Equatable, Codable {
    let ability: Species
}

struct Species: Equatable, Codable {
    let name: String
}

struct Sprites: Equatable, Codable {
    let frontDefault: String
    
    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
    }
}

struct TypeElement: Equatable, Codable {
    let type: Species
}
