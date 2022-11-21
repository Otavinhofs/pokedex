//
//  Language.swift
//  Pokedex
//
//  Created by Otávio da Silva on 18/11/22.
//

import Foundation

struct Pokemon: Codable {
    var id: Int
    var name: Languages
    var type: [String]
    var base: PokemonBase
    
}
