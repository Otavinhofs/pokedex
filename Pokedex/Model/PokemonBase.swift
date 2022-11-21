//
//  Base.swift
//  Pokedex
//
//  Created by Otávio da Silva on 18/11/22.
//

import Foundation

struct PokemonBase: Codable {
    var hp: Int
    var attack: Int
    var defense: Int
    var spAttack: Int
    var spDefense: Int
    var speed: Int
    
    enum CodingKeys: String, CodingKey {

        case hp = "HP",
        attack = "Attack",
        defense = "Defense",
        spAttack = "Sp. Attack",
        spDefense = "Sp. Defense",
        speed = "Speed"
        
        
    }
}
