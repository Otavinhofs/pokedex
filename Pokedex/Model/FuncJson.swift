//
//  FuncJson.swift
//  Pokedex
//
//  Created by Otávio da Silva on 18/11/22.
//

import Foundation
func jsonLink() -> [Pokemon] {
    var result: [Pokemon] = []
    let jsonPath = Bundle.main.url(forResource: "pokedex", withExtension: "json")
    if let path = jsonPath {
        let jsonData = try? Data(contentsOf: path)
        if let data = jsonData {
            let decode = JSONDecoder()
            let pokemon = try! decode.decode([Pokemon].self, from: data)
            result = pokemon
        }
    }    
    return result
}
